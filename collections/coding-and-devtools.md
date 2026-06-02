# 开发与调试

这个合集收录面向轻技术用户和开发者的开源 Skill，比如前端页面、后端接口、测试、部署、日志分析和代码评审。

## 常见任务

- 根据需求生成前端页面、小应用或管理后台。
- 把截图、设计稿、Figma 或 mockup 转成 HTML / React / Vue 代码。
- 规划后端接口和数据结构。
- 根据报错定位问题。
- 写测试、补文档、做代码评审。
- 上线前检查配置、环境变量和日志。

## 搜索关键词

- `coding agent skill`
- `AI frontend app builder`
- `open source AI app builder`
- `screenshot to code`
- `design to code React`
- `frontend agent workflow`
- `backend agent workflow`
- `API design review skill`
- `REST API agent skill`
- `backend developer Claude Code agent`
- `FastAPI agent workflow`
- `database migration ai agent`
- `debugging ai skill`
- `code review agent workflow`
- `deployment checklist ai agent`
- `software engineering prompt pack`

## 小类推荐位

每个小类最终尽量只留 2 到 3 个正式推荐：一个最省心，一个进阶，一个适合改造。如果某个 Skill 很有价值但不适合占主推荐位，就放在补充说明里。

| 小类 | 最省心 | 进阶 | 可改造 | 状态 |
| --- | --- | --- | --- | --- |
| 前端页面 / 小应用生成 | [frontend-design](../catalog/coding-and-devtools/frontend-design.md) | [frontend-ui-engineering](../catalog/coding-and-devtools/frontend-ui-engineering.md) | [web-artifacts-builder](../catalog/coding-and-devtools/web-artifacts-builder.md) | 已完成第一轮评测；[frontend-dev](../catalog/coding-and-devtools/frontend-dev.md) 作为高级视觉补充 |
| Skill 管理 / Agent 环境管理 | 待补 | [Skills Manager](../catalog/coding-and-devtools/skills-manager.md) | 待补 | 可参考，适合已经有多个 Skill 或多个 Agent 的用户 |
| 截图 / 设计稿转代码 | 待搜罗 | 待搜罗 | 待搜罗 | 待补 |
| 后端开发 | [Backend API Brief](../catalog/coding-and-devtools/backend-api-brief.md)<br>[Backend API Brief Starter](../kits/backend-api-brief-starter/README.md) | 待筛选 | 待筛选 | 最省心候选已补 starter；进阶和可改造继续筛选 |
| 测试与质量 | 待搜罗 | 待搜罗 | 待搜罗 | 待补 |
| 部署与运维 | 待搜罗 | 待搜罗 | 待搜罗 | 待补 |
| 日志分析 | 待搜罗 | 待搜罗 | 待搜罗 | 待补 |

## 筛选重点

- 要能和真实代码仓库配合，而不是只生成示例代码。
- 最好有测试、脚本或明确执行步骤。
- 需要标明支持的语言、框架和工具链。
- 对会执行命令或改文件的 Skill，要特别检查安全边界。

## 后端开发

后端小类先不急着定推荐位。后端 Skill 容易影响数据库、鉴权、权限、接口兼容和生产数据，所以第一轮先收候选，再用固定 case 试跑。

后端开发这里暂时只收这些任务：

- API 设计和接口契约评审。
- 在已有后端项目里新增接口或业务逻辑。
- 输入校验、错误处理、鉴权边界和权限判断。
- 数据库 schema / migration / seed 变更。
- 后端测试和最小可运行验证。

暂时不混在这里的任务：

- 纯日志排查，放到“日志分析”。
- CI/CD、Docker、云部署，放到“部署与运维”。
- 泛泛代码评审，放到“测试与质量”或“代码评审”小类。

第一轮候选记录看：[后端 Skill 候选与评测计划](../reviews/backend-skill-candidates.md)，完整试跑汇总看：[后端 Skill 完整试跑汇总](../reviews/backend-skill-outputs/backend-skills-full-test-summary.md)。

当前最省心候选是本项目自研的 [Backend API Brief](../catalog/coding-and-devtools/backend-api-brief.md)。它不是让小白直接写后端代码，而是把业务需求整理成“给自己看的接口说明”和“给开发看的后端交接稿”。普通用户可直接从 [Backend API Brief Starter](../kits/backend-api-brief-starter/README.md) 开始。

当前候选：

| 候选 | 来源 | 先看什么 | 当前判断 |
| --- | --- | --- | --- |
| Backend API Brief | `skills/backend-api-brief` + `kits/backend-api-brief-starter` | 是否适合小白把业务需求整理成自用接口说明和开发交接稿 | 最省心候选，已补 starter |
| AI Agent Skills / review-api-design | `psenger/ai-agent-skills` | 是否适合做 API 契约评审，而不是完整实现 | 推荐作为“小而美”的 API 评审候选 |
| Claude Code Workflows / dev-workflows | `shinpr/claude-code-workflows` | 是否适合端到端后端功能：需求、设计、实现、验证 | 进阶候选，适合已有代码仓库 |
| wshobson/agents backend-development | `wshobson/agents` | 是否适合后端 API 设计、实现、测试和安全评审 | 进阶候选，能力强但上手较重 |
| Agent Skills / backend-developer、api-architect | `jakenuts/agent-skills` | 是否能拆出后端开发和 API 设计两个角色 | 可改造素材 |
| Agent Almanac | `pjt222/agent-almanac` | 是否有可复用后端、测试、架构技能组合 | 来源池，不直接推荐 |
| Antigravity Awesome Skills | `sickn33/antigravity-awesome-skills` | 是否能筛出低风险 API、调试、安全条目 | 来源池，不整体推荐 |

## Skill 管理 / Agent 环境管理

这一类不是教读者“第一次使用 Skill”，而是解决 Skill 变多之后的整理、分组、同步和备份问题。

当前可参考：

- 进阶：[Skills Manager](../catalog/coding-and-devtools/skills-manager.md)。适合已经有多个 Skill、同时使用多个 Agent 的用户。它有图形界面和 CLI，但不适合放在新手主线前面。

配套教程看：[第 6 课：用 Skills Manager 管理多个 Skill](../tutorial/06-manage-many-skills.md)。

## 前端页面 / 小应用生成

这一小类已经跑过一轮 4 个 Skill × 3 个 case 的本地试用。评测记录看：[前端页面 Skill 评测用例](../reviews/frontend-page-skill-test-cases.md)。

当前推荐：

- 最省心：[frontend-design](../catalog/coding-and-devtools/frontend-design.md)。适合简单页面、首页、展示页，先保证页面不丑。
- 进阶：[frontend-ui-engineering](../catalog/coding-and-devtools/frontend-ui-engineering.md)。适合真实前端项目，重点是组件、状态、响应式和可访问性。
- 可改造：[web-artifacts-builder](../catalog/coding-and-devtools/web-artifacts-builder.md)。适合内部页面、工具台和复杂 artifact。
- 高级视觉补充：[frontend-dev](../catalog/coding-and-devtools/frontend-dev.md)。适合首页、营销页、产品页和强动效页面。
