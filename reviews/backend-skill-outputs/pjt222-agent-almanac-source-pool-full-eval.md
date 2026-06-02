# pjt222/agent-almanac：来源池评估

## 基本信息

- 候选：`agent-almanac`
- 来源：https://github.com/pjt222/agent-almanac
- 许可：MIT
- 测试日期：2026-05-26
- 测试方式：来源池评估。`git clone` 失败，改用 raw GitHub 读取 README 和 `_registry.yml`。

## 定位

它不是单个后端 skill，而是一个大型集合：

- 352 skills
- 72 agents
- 17 teams
- 27 guides
- 支持 Claude Code、Codex、Cursor、Gemini CLI 等多种工具

README 也明确说 Skills 是可执行步骤，Agents 是角色，Teams 是组合。因此不能把整个仓库当作一个“后端开发 skill”直接推荐给用户。

## 后端相关线索

从 registry 里能看到一些可能相关的条目：

- `use-graphql-api`
- `security-audit-codebase`
- `configure-api-gateway`
- `configure-docker-compose`
- `configure-nginx`
- `review-software-architecture`
- `strangler-fig` / migration 类条目
- CLI、测试、依赖审计相关条目

这些更像“从中继续挑单点 skill”的来源，而不是一个能直接覆盖 Case 1-6 的后端候选。

## 6 个 Case 判断

| Case | 是否直接评分 | 原因 |
| --- | --- | --- |
| Case 1 API 契约设计 | 不评分 | 需要先抽出具体 API 设计 skill。 |
| Case 2 FastAPI 任务归档 | 不评分 | 来源池本身没有统一落地 workflow。 |
| Case 3 REST API 评审 | 不评分 | 可能能找到架构评审条目，但需单独读取。 |
| Case 4 数据库迁移 | 不评分 | registry 有迁移相关线索，但不等于已验证。 |
| Case 5 鉴权边界 | 不评分 | 可能由 security / architecture skill 组合覆盖。 |
| Case 6 生产事故排查 | 不评分 | 需先找 debug / incident / observability 条目。 |

## 适合我们的用户吗

- 完全小白：不适合，体量大，会迷路。
- 轻技术用户：不适合直接推荐，但可以由我们挑出 1-2 个低风险条目再做教程。
- 开发者：可作为“技能库来源”探索。

## 结论

作为来源池保留，不进入正式推荐。下一步如果继续挖，可以优先读取 `review-software-architecture`、`security-audit-codebase`、`use-graphql-api`，但要把它们当独立候选重新跑 6 个 case。

