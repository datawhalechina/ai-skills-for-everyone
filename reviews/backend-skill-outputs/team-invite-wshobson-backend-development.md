# wshobson/agents backend-development：团队邀请 Case 试跑

## 基本信息

- 候选：`wshobson/agents` 的 `backend-development` plugin
- 参考路径：`.codex/backend-skill-repos/agents/plugins/backend-development/`
- 测试方式：文档级试跑，不执行安装、不创建 `.feature-dev/`、不修改后端代码。
- 对照 case：团队管理员通过邮箱邀请成员加入团队。

## 按进阶工作流会怎么跑

这个 Skill 的完整命令路线大致是：

```text
/backend-development:feature-development 邀请成员加入团队 --complexity medium
```

真实运行时它会先写 `.feature-dev/01-requirements.md`，再写 `.feature-dev/02-architecture.md`，到架构 checkpoint 后停下来等用户确认。后续才进入实现、测试、安全和性能评审。

本次没有真实后端代码仓库，所以只模拟到“需求 + 架构 + 测试安全计划”。

## 01 Requirements

### Problem Statement

团队协作工具需要一种受控方式邀请外部或已有用户加入团队。团队管理员希望输入邮箱、选择角色、发送邀请链接；被邀请人接受后成为团队成员。系统需要避免重复邀请、权限越权、过期链接和邮件发送失败造成的状态混乱。

### Acceptance Criteria

- [ ] 团队管理员可以创建邀请并选择允许的团队角色。
- [ ] 非团队管理员不能创建、重发、撤销或查看团队邀请。
- [ ] 已经是团队成员的邮箱不能被重复邀请。
- [ ] 已有待接受邀请时，不重复创建，可通过重发流程处理。
- [ ] 邀请链接默认 7 天过期。
- [ ] 被邀请人接受邀请后，系统创建团队成员关系并更新邀请状态。
- [ ] 管理员可以查看待接受邀请并撤销邀请。
- [ ] 过期、撤销、已接受邀请不能再次接受。
- [ ] 关键动作需要审计记录。

### Scope

In scope:

- 单人邮箱邀请。
- 邀请创建、列表、重发、撤销、接受。
- 邀请状态和团队成员关系变更。
- 权限校验、输入校验、基础频率限制。
- 邮件发送集成的失败处理策略。

Out of scope:

- 批量邀请。
- 通讯录导入。
- SSO / 企业域名自动加入。
- 复杂审批流。
- 项目级细粒度权限继承。

### Technical Constraints

- 假设已有用户登录系统、团队成员表和邮件服务。
- 邀请 token 不以明文形式落库。
- 接受邀请时建议要求登录用户邮箱与邀请邮箱一致。
- 创建成员关系与邀请状态更新应保持事务一致性。

### Dependencies

- Auth / session 系统。
- Team membership / role 系统。
- Email delivery provider。
- Audit log。
- Background job 或 retry 机制，视邮件发送策略决定。

## 02 Architecture

### Service / Component Design

| 组件 | 责任 |
| --- | --- |
| `InvitationController` | 暴露邀请相关 API，做请求校验和响应映射 |
| `InvitationService` | 处理创建、重发、撤销、接受邀请的业务规则 |
| `MembershipService` | 创建团队成员关系，校验成员是否已存在 |
| `TokenService` | 生成高熵 token，只保存 hash，校验 token |
| `EmailService` | 发送邀请邮件，封装邮件供应商失败和重试 |
| `AuditLogService` | 记录邀请、撤销、接受等关键动作 |

### API Design

| 方法 | 路径 | 说明 | 关键校验 |
| --- | --- | --- | --- |
| `POST` | `/teams/{team_id}/invitations` | 创建邀请 | 管理员权限、邮箱格式、角色白名单、成员/邀请去重 |
| `GET` | `/teams/{team_id}/invitations` | 邀请列表 | 管理员权限、分页、状态筛选 |
| `POST` | `/teams/{team_id}/invitations/{id}/resend` | 重发邀请 | 管理员权限、状态为 `pending`、频率限制 |
| `POST` | `/teams/{team_id}/invitations/{id}/revoke` | 撤销邀请 | 管理员权限、状态为 `pending` |
| `GET` | `/invitations/{token}` | 查看邀请摘要 | token 有效，不泄露团队内部信息 |
| `POST` | `/invitations/{token}/accept` | 接受邀请 | token 有效、邮箱匹配、状态可接受、事务写入成员关系 |

### Data Model

核心表：`team_invitations`

- `id`
- `team_id`
- `email_normalized`
- `role`
- `status`
- `token_hash`
- `expires_at`
- `invited_by`
- `accepted_by`
- `accepted_at`
- `revoked_by`
- `revoked_at`
- `created_at`
- `updated_at`

建议索引：

- `team_id, status, created_at`：邀请列表分页。
- `token_hash`：接受邀请时查找。
- `team_id, email_normalized, status`：防止同邮箱多条有效 `pending` 邀请。

状态流转：

```text
pending -> accepted
pending -> revoked
pending -> expired
```

不允许 `accepted`、`revoked`、`expired` 回到 `pending`。重新邀请应创建新邀请或刷新旧邀请，二选一待产品确认。

### Security Considerations

- Broken Access Control：所有团队维度操作必须校验团队管理员权限。
- Privilege Escalation：请求体中的 `role` 必须走服务端白名单和角色上限校验。
- Token Leakage：token 只展示一次，只存 hash；避免出现在应用日志、分析事件和错误追踪里。
- Invitation Hijacking：接受邀请时校验登录用户邮箱与邀请邮箱一致。
- Abuse / Spam：创建和重发邀请要有频率限制，可按团队、管理员账号和邮箱维度限流。
- Enumeration：对外部 token 查询接口不要泄露“邮箱是否注册”“团队成员列表”等敏感信息。

### Integration Points

- 邮件服务失败要明确策略：
  - 方案 A：邀请记录先创建，邮件失败标记为 `pending_email_failed` 或记录 `last_send_error`，允许重发。
  - 方案 B：邮件发送失败则整个创建请求失败，不创建邀请。
- 推荐方案 A，但需要后台重试、管理员可见状态和运维告警。

### Risk Assessment

| 风险 | 影响 | 缓解 |
| --- | --- | --- |
| token 泄露 | 非目标用户加入团队 | token 高熵、hash 存储、短有效期、邮箱匹配 |
| 角色越权 | 被邀请人成为过高权限角色 | 角色白名单、邀请人角色上限校验 |
| 邮件失败导致半成功 | 管理员以为已邀请，对方没收到 | 记录发送状态、重发入口、告警 |
| 重复邀请 | 多封邮件、状态混乱 | 唯一约束和 `409` 冲突处理 |
| 接受流程并发 | 重复创建成员关系 | 事务、唯一索引、幂等处理 |

## Checkpoint Summary

如果按进阶 Skill 真跑，到这里应该停下来让用户确认：

- 是否接受“邀请记录先创建，邮件失败可重发”的策略。
- 是否强制接受邀请账号邮箱与邀请邮箱一致。
- 重发邀请是否刷新 token 和有效期。
- 角色范围是否只包括团队级角色。
- 是否需要保留历史邀请列表。

## Testing & Validation Plan

### Unit Tests

- `InvitationService.createInvitation`：权限、邮箱规范化、角色白名单、重复成员、重复 pending 邀请。
- `InvitationService.acceptInvitation`：token、状态、过期、邮箱匹配、成员创建。
- `TokenService`：生成、hash、验证、过期判断。

### Integration Tests

- 管理员创建邀请后返回 `201`，并触发邮件发送。
- 普通成员创建邀请返回 `403`。
- 已是成员的邮箱返回 `409`。
- 已有待接受邀请时创建返回 `409`，重发接口成功。
- 接受邀请后团队成员表新增记录，邀请状态变为 `accepted`。
- 撤销后旧 token 接受返回 `410`。
- 邮件服务失败时按确认策略返回结果并记录错误。

### Security Review Focus

- 后端权限不能依赖前端。
- token 不能明文落库或出现在日志。
- 接受邀请必须防止链接转发导致的越权加入。
- 邀请接口要限流，防止邮件轰炸。
- 错误信息不要泄露团队、邮箱或用户注册状态。

### Performance Review Focus

- 邀请列表必须分页。
- `team_id + status + created_at` 和 `token_hash` 需要索引。
- 邮件发送不应阻塞主请求太久；复杂情况下可用后台任务。
- 管理员列表页面不应同步查询大量用户资料，可按需 join 或批量加载。

## 试跑观察

- 进阶 Skill 的产物更像“真实开工前的工程设计”，会主动扩展到组件、状态机、索引、事务、限流、审计、测试和上线风险。
- 它默认用户能理解比较多后端术语，也默认存在真实代码仓库和后续实现阶段。
- 对完全小白来说信息量偏大，但对准备交给开发团队实现的人很有价值。

