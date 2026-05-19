# 前端页面 Skill 评测摘要

这份记录用于说明“前端页面 / 小应用生成”小类为什么这样推荐。

我们实际拉取了 4 个候选 Skill，并用 3 个 case 做了本地试跑。完整试跑输出已经放进仓库：

```text
reviews/frontend-page-skill-outputs/index.html
```

你可以打开 [完整试跑输出](frontend-page-skill-outputs/index.html)，逐个查看 12 个页面。

## 评测对象

| Skill | 来源 | 定位 |
| --- | --- | --- |
| `frontend-design` | `anthropics/skills` | 视觉增强，适合简单页面、首页、展示页 |
| `frontend-ui-engineering` | `addyosmani/agent-skills` | 工程质量，适合真实前端项目 |
| `web-artifacts-builder` | `anthropics/skills` | 复杂 artifact，适合内部页面和工具台 |
| `frontend-dev` | `MiniMax-AI/skills` | 高级视觉，适合首页、营销页、产品页 |

本地拉取 commit：

| 仓库 | commit |
| --- | --- |
| `anthropics/skills` | `6a5bb06` |
| `addyosmani/agent-skills` | `f17c6e8` |
| `MiniMax-AI/skills` | `60aaae5` |

## Case 1：入门页面

任务：做一个“个人周报生成器”的中文单页工具首页。

最佳展示：`frontend-design`

原因：

- 页面最容易摆脱默认模板感。
- 对首页、展示页、简单工具介绍页很友好。
- 中文文案和视觉方向比较自然。

适合推荐给：

- 想先把页面做得不丑的人。
- 会用 Agent，但不想自己反复调配色、排版和风格的人。

注意：

- 它不是完整工程 Skill。
- 如果页面有复杂状态、表单、列表和权限逻辑，需要再配合工程型 Skill。

## Case 2：进阶页面

任务：做一个 AI Skill Hub 首页，包含分类筛选、搜索、Skill 卡片、空状态和移动端布局。

最佳展示：`frontend-ui-engineering`

原因：

- 信息架构最稳。
- 会主动关注组件结构、状态、空态、错误态和响应式。
- 更适合后续接进真实项目。

适合推荐给：

- 已经在真实前端项目里使用 Agent 的人。
- 想让生成页面更像工程代码，而不是一次性静态稿的人。

注意：

- 视觉不一定最惊艳。
- 如果要做产品首页或营销页，可以搭配 `frontend-design` 或 `frontend-dev`。

## Case 3：高级页面

任务：做一个 Agent 任务运行台，展示任务步骤、命令审核、风险提示、文件改动和事件日志。

最佳展示：`web-artifacts-builder`

原因：

- 这个 case 更像复杂内部页面或 artifact。
- 它有 React + TypeScript + Vite + Tailwind + shadcn/ui 脚手架和单文件打包路线。
- 适合把复杂交互页面做成可分享的 artifact。

适合推荐给：

- 想做内部工具台、控制台、复杂交互页面的人。
- 能接受 Node、pnpm、脚本和依赖安装的轻技术用户。

注意：

- 对简单页面太重。
- 它更像构建工具箱，不是单纯的设计 Skill。

## 额外观察：frontend-dev

`frontend-dev` 在首页、营销页、产品页上很有价值。

它的优势是：

- 视觉冲击更强。
- 更关注文案、动效、媒体资产和产品叙事。
- 适合做品牌感强的首页。

但它不适合作为普通前端页面的第一入口：

- 完整媒体资产流程需要 `MINIMAX_API_KEY`。
- 对内部工具台可能太重、太视觉化。
- 普通小应用不一定需要它的资产生成能力。

所以它更适合放在“高级视觉补充”，而不是占用最省心 / 进阶 / 可改造三个主推荐位。

## 推荐结论

| 推荐位 | Skill | 为什么 |
| --- | --- | --- |
| 最省心 | `frontend-design` | 先解决页面不丑、风格不模板的问题 |
| 进阶 | `frontend-ui-engineering` | 解决真实项目里的组件、状态、响应式、可访问性 |
| 可改造 | `web-artifacts-builder` | 适合内部页面、工具台、复杂 artifact 和单文件打包 |
| 高级视觉补充 | `frontend-dev` | 适合首页、营销页、产品页和强动效页面 |

简单说：

- 做一个好看的页面：先看 `frontend-design`。
- 做一个能进项目的页面：看 `frontend-ui-engineering`。
- 做一个复杂内部页面：看 `web-artifacts-builder`。
- 做一个高视觉首页：看 `frontend-dev`。
