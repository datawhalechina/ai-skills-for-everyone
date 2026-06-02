# shinpr/claude-code-workflows dev-workflows：完整试跑

## 基本信息

- 候选：`shinpr/claude-code-workflows` 的 `dev-workflows`
- 来源：https://github.com/shinpr/claude-code-workflows
- 本地 commit：`3b9b58d`
- 测试日期：2026-05-26
- 测试方式：文档级完整试跑。读取 `recipe-implement`、`recipe-design`、`recipe-diagnose`、`recipe-add-integration-tests` 以及相关 agent 定义。

## 使用条件

它面向 Claude Code workflow，README 把 Backend / APIs / CLI tools 归到 `dev-workflows`：

```text
/plugin marketplace add shinpr/claude-code-workflows
/plugin install dev-workflows@claude-code-workflows
/reload-plugins
/recipe-implement <your feature>
```

它的核心优势不是“后端知识库”，而是“流程纪律”：需求分析、代码库分析、设计文档、工作计划、任务拆解、实现、质量修复、安全评审、诊断。

## 6 个 Case 试跑

| Case | 需求澄清 | 设计质量 | 代码落地 | 测试验证 | 风险意识 | 用户友好 | 判断 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Case 1 API 契约设计 | 4 | 4 | 2 | 3 | 4 | 2 | 可用，但不如 API 专项 skill |
| Case 2 FastAPI 任务归档 | 5 | 4 | 5 | 5 | 4 | 2 | 很强 |
| Case 3 REST API 评审 | 4 | 4 | 3 | 4 | 4 | 2 | 强 |
| Case 4 数据库迁移 | 4 | 4 | 4 | 4 | 5 | 2 | 强，但需要工程经验确认 SQL |
| Case 5 鉴权边界 | 5 | 4 | 4 | 5 | 5 | 2 | 很强 |
| Case 6 生产事故排查 | 5 | 5 | 3 | 4 | 5 | 2 | 很强 |

## 观察

亮点：

- `recipe-design` 会先做 scope bootstrap，再让 codebase-analyzer 分析真实代码，适合 Case 2 这种“已有项目改功能”。
- `recipe-implement` 有明确质量循环：task-executor、integration-test-reviewer、quality-fixer、commit。
- `recipe-diagnose` 对 Case 6 很合适，会区分变更引发故障和新发现问题，要求 investigator、verifier、solver 形成证据链。
- 它很强调停点和用户确认，能减少后端高风险改动里“AI 一口气改完”的问题。

问题：

- 很重，普通用户会被 PRD、ADR、Design Doc、Task file、subagent 这些概念劝退。
- 不是 API / 数据库专项知识库，遇到复杂 SQL migration 仍需要额外数据库 skill 或人工复核。
- 适合真实仓库，不适合用户只想贴一段接口设计求建议。

## 适合我们的用户吗

- 完全小白：不适合直接推荐。
- 轻技术用户：可以拆成教程版流程，比如“先读文件、再设计、再测试、最后说明风险”。
- 开发者：很适合，尤其是已有项目新增后端功能、修故障、补集成测试。

## 结论

推荐进入“后端开发 / 进阶候选”。如果我们要做自己的后端 skill，最值得借鉴它的不是复杂术语，而是阶段化：读代码、定范围、设计、实现、测试、风险说明。

