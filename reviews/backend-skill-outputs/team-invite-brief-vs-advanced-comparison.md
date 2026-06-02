# 团队邀请 Case：小白 Skill 与进阶 Skill 对比

## 对比对象

- 小白路线：`skills/backend-api-brief/SKILL.md`
- 进阶路线：`wshobson/agents backend-development`
- Case：团队管理员邀请成员加入团队

## 产物链接

- [小白原始需求](../backend-api-brief-skill-output/team-invite/inputs/api-request.md)
- [backend-api-brief：给自己看的接口说明](../backend-api-brief-skill-output/team-invite/outputs/api-explainer.md)
- [backend-api-brief：后端开发交接稿](../backend-api-brief-skill-output/team-invite/outputs/backend-handoff.md)
- [wshobson backend-development：进阶试跑](team-invite-wshobson-backend-development.md)

## 效果对比

| 维度 | backend-api-brief | wshobson backend-development |
| --- | --- | --- |
| 面向用户 | 不懂后端的小白、产品、运营、业务同学 | 会用 Agent 的开发者或轻技术用户 |
| 输出形态 | 两份 Markdown：自己看 + 给开发 | 分阶段工程文档：需求、架构、实现、测试、安全、性能 |
| 可读性 | 更轻，能解释 token、过期、重复邀请这些概念 | 信息更全，但术语密度更高 |
| 接口设计 | 能给出可讨论的 API 清单 | 会补服务边界、状态机、索引、事务、限流 |
| 风险覆盖 | 覆盖权限、重复邀请、邮件失败、token 安全 | 进一步覆盖并发、枚举攻击、审计、可观测、性能 |
| 小白友好度 | 高 | 中低，需要教程包装 |
| 进入实现能力 | 适合做实现前交接 | 更适合直接进入真实代码仓库实现 |

## 结论

这个 case 跑下来，两个 Skill 的定位是分开的：

- `backend-api-brief` 适合作为小白第一入口。它能把“我想邀请成员”翻译成可沟通的接口说明，让用户知道该问开发什么。
- `wshobson backend-development` 适合作为进阶路线。它会把同一个需求推进到工程设计层，适合已有后端项目、准备真正实现接口时使用。

## 暴露出的问题

`backend-api-brief` 这次表现不错，但暴露出一个可以马上补强的点：邀请、分享链接、重置密码、邮箱验证这类功能都有“外部链接 + token + 邮件发送”的共同风险。本次已把这条检查补进 Skill：

```text
如果需求包含邮件、邀请链接、重置链接、外部分享链接，要额外检查 token 存储、有效期、重放、撤销、日志泄露、频率限制和邮件失败策略。
```

这样小白版本不会变重，但以后能更稳定地覆盖 SaaS 后端常见坑。
