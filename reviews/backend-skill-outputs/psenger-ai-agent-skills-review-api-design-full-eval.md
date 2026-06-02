# psenger/ai-agent-skills review-api-design：完整试跑

## 基本信息

- 候选：`review-api-design`
- 来源：https://github.com/psenger/ai-agent-skills
- 原文路径：`skills/review-api-design/SKILL.md`
- 许可：CC-BY-4.0
- 测试日期：2026-05-26
- 测试方式：文档级完整试跑。`git clone` 失败，改用 raw GitHub 读取 `SKILL.md`。

## 使用条件

这是一个很窄的 skill：只做 REST API 设计评审，不负责写代码、迁移数据库、排查事故。

触发场景：

- 用户贴 OpenAPI / Swagger。
- 用户贴 endpoint list。
- 用户描述一个 API 设计，让 AI 在实现前评审。

输出结构包括 Summary of Findings、Detailed Findings、What's Missing、Readiness Assessment，并要求区分 Critical / Warning / Suggestion / Good。

## 6 个 Case 试跑

| Case | 需求澄清 | 设计质量 | 代码落地 | 测试验证 | 风险意识 | 用户友好 | 判断 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Case 1 API 契约设计 | 4 | 4 | 1 | 2 | 4 | 4 | 可用，但更像评审不是生成 |
| Case 2 FastAPI 任务归档 | 2 | 2 | 1 | 1 | 2 | 4 | 不适合 |
| Case 3 REST API 评审 | 5 | 5 | 1 | 2 | 5 | 4 | 很强 |
| Case 4 数据库迁移 | 1 | 1 | 1 | 1 | 1 | 4 | 不适合 |
| Case 5 鉴权边界 | 3 | 3 | 1 | 2 | 4 | 4 | 可用于接口权限评审 |
| Case 6 生产事故排查 | 1 | 1 | 1 | 1 | 2 | 4 | 不适合 |

## 观察

亮点：

- 边界非常清楚：规划阶段评审 API，不写实现。
- 会主动问 domain、consumer、scale、auth、deployment、legacy、team experience。
- 对 Case 3 的问题命中率高：命名、HTTP 语义、权限、错误格式、分页、版本兼容都在覆盖范围内。
- 对普通用户很好解释：“把接口设计贴进去，让它按严重程度挑问题”。

问题：

- 不适合“后端开发”整体场景，只能作为 API 设计 / API 评审小 skill。
- Case 1 如果用户希望“从零设计”，它会先要求补充具体 endpoints 或上下文；这其实是好事，但和“直接生成完整 API 契约”的体验不同。
- 对数据库迁移、集成测试、事故止血完全不覆盖。

## 适合我们的用户吗

- 完全小白：适合，只要教程明确“它不是写代码，是帮你检查接口设计”。
- 轻技术用户：很适合，尤其是产品、运营、项目经理要和开发沟通 API 时。
- 开发者：适合作为 PR 前的接口契约评审。

## 结论

推荐收录为“API 设计评审”小 skill，而不是“后端开发”总 skill。它的小而美正好适合我们的项目风格。

