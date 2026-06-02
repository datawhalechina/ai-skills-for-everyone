# sickn33/antigravity-awesome-skills：来源池评估

## 基本信息

- 候选：`antigravity-awesome-skills`
- 来源：https://github.com/sickn33/antigravity-awesome-skills
- 许可：MIT / CC BY 4.0
- 测试日期：2026-05-26
- 测试方式：来源池评估。`git clone` 失败，改用 raw GitHub 读取 README、`skills_index.json` 和部分后端相关 `SKILL.md`。

## 定位

这是一个超大型 skill 库，不是单个后端 skill。README 当前显示：

- 1,470+ skills
- 39k+ GitHub stars
- 支持 Claude Code、Cursor、Codex CLI、Gemini CLI、Antigravity、OpenCode 等
- 可按 category、risk、tags 做缩小安装

所以它适合作为“找后端 skill 的大池子”，不适合作为一个整体推荐给我们的用户。

## 已抽样读取的后端相关 Skill

| Skill | 定位 | 初步判断 |
| --- | --- | --- |
| `api-design-principles` | REST / GraphQL API 设计原则 | 低风险、适合入门层 |
| `api-endpoint-builder` | REST endpoint 实现模板 | 可参考，但示例偏 Node/Express，需要改造 |
| `debugging-strategies` | 系统化调试和事故排查 | 可覆盖 Case 6 的思路，但不是后端专属 |

## 6 个 Case 判断

| Case | 可用条目 | 判断 |
| --- | --- | --- |
| Case 1 API 契约设计 | `api-design-principles` | 值得单独复测 |
| Case 2 FastAPI 任务归档 | `api-endpoint-builder` | 只能做 endpoint 基础模板，缺少读现有仓库流程 |
| Case 3 REST API 评审 | `api-design-principles`、可能还有 API review 类条目 | 值得继续筛 |
| Case 4 数据库迁移 | 需继续查 migration / database 条目 | 暂不推荐 |
| Case 5 鉴权边界 | `api-security-best-practices`、`security-auditor` 等 | 值得继续筛，但要注意风险标记 |
| Case 6 生产事故排查 | `debugging-strategies` | 可参考为排障方法论 |

## 风险

- 体量过大，直接安装整包会把普通用户淹没。
- 部分条目 risk 为 `unknown` 或 `offensive`，必须做安全筛选。
- 很多 skill 是社区聚合，质量不均，不能只看 star 数。
- 对我们的教程来说，最重要的是“挑小而稳的 skill”，不是搬整包。

## 适合我们的用户吗

- 完全小白：不适合直接推荐。
- 轻技术用户：可以由我们精选 2-3 个后端入门条目。
- 开发者：适合按 category / risk 搜索候选。

## 结论

作为来源池保留。第一轮最值得继续单独复测的是 `api-design-principles`、`api-security-best-practices`、`debugging-strategies`，但它们要作为独立 skill 进入评测，而不是把整个仓库作为后端推荐。

