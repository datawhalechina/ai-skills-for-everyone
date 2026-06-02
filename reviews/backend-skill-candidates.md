# 后端 Skill 候选与评测计划

这份记录用于启动“后端开发”小类的收集。当前只做候选池和评测计划，不直接给正式推荐位。

## 为什么后端要谨慎

后端 Skill 不只是“帮我写几段代码”。它可能会影响：

- API 兼容性和错误码。
- 鉴权、权限和数据隔离。
- 数据库 schema、migration 和 seed。
- 事务、一致性和幂等。
- 日志、测试和上线风险。

所以第一轮不看宣传语，先看它能不能在真实仓库里做到“设计清楚、改动克制、测试可跑、风险可说清”。

## 小类边界

先收这些：

- API 设计和接口契约评审。
- 新增或修改后端接口。
- 输入校验、错误处理、鉴权和权限判断。
- 数据库 schema / migration / seed。
- 后端单元测试、集成测试和 smoke test。

暂不放这里：

- 纯日志排查：放“日志分析”。
- CI/CD、Docker、云部署：放“部署与运维”。
- 泛泛代码评审：放“测试与质量”或后续单独小类。

## 首批候选

| 候选 | 来源 | 可能定位 | 先看点 | 状态 |
| --- | --- | --- | --- | --- |
| Backend API Brief | ../skills/backend-api-brief/SKILL.md | 最省心候选：自用接口说明与开发交接 | 是否能让小白从业务需求生成自用接口说明和后端开发交接稿 | 已用任务归档样例试跑，继续观察 |
| wshobson/agents backend-development | https://github.com/wshobson/agents | 进阶：后端 API 设计和端到端功能开发 | 是否适合真实后端项目的设计、实现、测试和安全评审 | 已跑 6 个 case，进阶候选 |
| Claude Code Workflows / dev-workflows | https://github.com/shinpr/claude-code-workflows | 进阶：端到端后端功能工作流 | 是否能从需求到设计、实现、验证完整走通 | 已跑 6 个 case，进阶候选 |
| Agent Skills / backend-developer、api-architect | https://github.com/jakenuts/agent-skills | 可改造：后端开发和 API 设计角色 | 是否能拆成普通用户可理解的后端路线 | 已跑 6 个 case，适合二次改造 |
| AI Agent Skills / review-api-design | https://github.com/psenger/ai-agent-skills | 可参考：API 契约评审 | 是否能稳定发现 REST 设计问题 | 已跑 6 个 case，推荐做 API 评审小 skill |
| Agent Almanac | https://github.com/pjt222/agent-almanac | 来源池：多 Skill / 多 agent 库 | 是否有可复用的后端、测试、架构组合 | 已做来源池评估，不直接推荐 |
| Antigravity Awesome Skills | https://github.com/sickn33/antigravity-awesome-skills | 来源池：超大型 Skill 库 | 是否能筛出低风险 API、调试、安全条目 | 已做来源池评估，不整体推荐 |

## 资料核查记录

- `wshobson/agents`：`backend-development` plugin 覆盖 REST / GraphQL API 设计、TDD 和后端架构，安装方式为 `/plugin install backend-development`。本地 commit：`5162141`。核查日期：2026-05-26。
- `Backend API Brief`：本项目自研轻量组合 Skill，吸收 API 设计、API 评审、后端架构视角和数据库风险提醒，目标是给小白生成自用接口说明和后端开发交接稿。已用任务归档样例试跑。设计日期：2026-05-26。
- `shinpr/claude-code-workflows`：README 将 Backend / APIs / CLI tools 标到 `dev-workflows`，并提供 `dev-skills` skills-only 路线。核查日期：2026-05-26。
- `jakenuts/agent-skills`：README 提到 universal agents 里有 `api-architect.md` 和 `backend-developer.md`，支持 Claude Code，Codex CLI 标为实验性。核查日期：2026-05-26。
- `psenger/ai-agent-skills`：`review-api-design` 定位为 REST contract / endpoint review，输出结构化评审和 readiness assessment。`git clone` 失败，已用 raw GitHub 读取 `SKILL.md`。核查日期：2026-05-26。
- `pjt222/agent-almanac`：README 定位为大量 executable skills、specialist agents 和 teams 的集合，支持 Claude Code、Codex、Cursor 等。核查日期：2026-05-26。
- `sickn33/antigravity-awesome-skills`：README 当前定位为 1,470+ agentic skills 的 installable library，并支持 Codex CLI。`git clone` 失败，已用 raw GitHub 读取 README、`skills_index.json` 和部分后端相关 `SKILL.md`。核查日期：2026-05-26。

## 评测 Case

统一题库见：[后端 Skill 经典评测 Case](backend-skill-test-cases.md)。

第一轮已经按 6 个 case 做文档级完整试跑：

1. Case 1：API 契约设计。
2. Case 2：已有后端项目新增接口。
3. Case 3：REST API 质量评审。
4. Case 4：数据库迁移与数据修复。
5. Case 5：鉴权边界与越权风险。
6. Case 6：生产事故排查。

## 第一轮推荐标准

进入正式推荐前，至少要满足：

- 有明确许可证。
- 有清楚安装或引用方式。
- 能在一个后端 case 上产出可复核结果。
- 不诱导用户直接改生产数据库或真实凭据。
- 会提醒测试、迁移、权限和数据风险。
- 对普通用户能解释清楚“什么时候该用、什么时候别用”。

## 暂定结论

先把后端开发作为“候选收集中”处理。本轮结论是：`Backend API Brief` 适合作为小白最省心候选继续试跑；`wshobson/agents` 和 `shinpr/claude-code-workflows` 适合放进进阶候选；`psenger/review-api-design` 适合单独做 API 设计评审位；`jakenuts/agent-skills` 适合作为可改造素材；`agent-almanac` 和 `antigravity-awesome-skills` 只作为来源池，不整体推荐。

已记录：

- [后端 Skill 完整试跑汇总](backend-skill-outputs/backend-skills-full-test-summary.md)
- [Backend API Brief](../skills/backend-api-brief/SKILL.md)
- [Backend API Brief：任务归档样例试跑](backend-api-brief-skill-output/task-archive/README.md)
- [wshobson/agents backend-development：Case 1 试跑记录](backend-skill-outputs/wshobson-agents-backend-development-case1.md)
- [wshobson/agents backend-development：完整试跑](backend-skill-outputs/wshobson-agents-backend-development-full-eval.md)
- [shinpr/claude-code-workflows dev-workflows：完整试跑](backend-skill-outputs/shinpr-claude-code-workflows-dev-workflows-full-eval.md)
- [jakenuts/agent-skills 后端角色卡：完整试跑](backend-skill-outputs/jakenuts-agent-skills-backend-full-eval.md)
- [psenger/review-api-design：完整试跑](backend-skill-outputs/psenger-ai-agent-skills-review-api-design-full-eval.md)
- [pjt222/agent-almanac：来源池评估](backend-skill-outputs/pjt222-agent-almanac-source-pool-full-eval.md)
- [sickn33/antigravity-awesome-skills：来源池评估](backend-skill-outputs/sickn33-antigravity-awesome-skills-source-pool-full-eval.md)
