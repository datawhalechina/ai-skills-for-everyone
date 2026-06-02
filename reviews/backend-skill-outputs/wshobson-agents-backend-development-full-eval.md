# wshobson/agents backend-development：完整试跑

## 基本信息

- 候选：`wshobson/agents` 的 `backend-development` plugin
- 来源：https://github.com/wshobson/agents
- 本地 commit：`5162141`
- 许可：MIT
- 测试日期：2026-05-26
- 测试方式：文档级完整试跑。读取 `backend-development` command、`backend-architect`、`test-automator`、`security-auditor`、`api-design-principles`，并参考同仓库的 `database-migrations`、`backend-api-security` 作为补充能力。

## 使用条件

最自然的使用环境是 Claude Code plugin marketplace：

```text
/plugin marketplace add wshobson/agents
/plugin install backend-development
/backend-development:feature-development <feature description>
```

它不是轻量 prompt，而是一套分阶段 workflow：需求、架构、安全设计、实现、测试、安全评审、性能评审、部署和文档。适合有真实代码仓库的开发者，不适合完全小白直接上手。

## 6 个 Case 试跑

| Case | 需求澄清 | 设计质量 | 代码落地 | 测试验证 | 风险意识 | 用户友好 | 判断 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Case 1 API 契约设计 | 4 | 5 | 3 | 4 | 5 | 2 | 很强 |
| Case 2 FastAPI 任务归档 | 4 | 4 | 4 | 5 | 4 | 2 | 强 |
| Case 3 REST API 评审 | 3 | 4 | 2 | 3 | 4 | 2 | 可用但不是最顺手 |
| Case 4 数据库迁移 | 3 | 4 | 3 | 4 | 5 | 2 | 强，最好配合同仓 `database-migrations` |
| Case 5 鉴权边界 | 4 | 4 | 3 | 4 | 5 | 2 | 强，安全意识好 |
| Case 6 生产事故排查 | 3 | 4 | 2 | 3 | 4 | 2 | 中上，缺少专门 incident 流程 |

## 观察

亮点：

- `feature-development` 强制写 `.feature-dev/` 阶段产物，并在架构和测试后停下来让用户确认。
- `backend-architect` 覆盖 API 契约、认证授权、分页、版本、观测性、韧性和数据一致性。
- 测试、安全、性能是固定步骤，不是临时想到再补。
- 对 Case 4 这种数据库迁移高风险场景，仓库里还有 `database-migrations/sql-migrations` 可补上零停机迁移、分批 backfill、验证和回滚。

问题：

- 对普通用户太重，slash command、plugin、agent、checkpoint 的概念都要解释。
- Case 3 纯 API 评审时，它的工作流偏“大”，不如单点 API review skill 干净。
- Case 6 事故排查能靠架构和观测性经验回答，但不是专门的 incident response skill。

## 适合我们的用户吗

- 完全小白：不适合直接推荐。
- 轻技术用户：适合作为进阶教程，但需要我们包装成“什么时候停、看哪些文件、怎么确认风险”。
- 开发者：适合，尤其是已有后端仓库、要新增功能或做迁移的场景。

## 结论

推荐进入“后端开发 / 进阶候选”。不要作为第一个后端 skill 教给用户，可以放在后面做“完整后端功能开发工作流”。

