---
id: frontend-ui-engineering
name: frontend-ui-engineering
source_type: github
source_url: https://github.com/addyosmani/agent-skills/tree/main/skills/frontend-ui-engineering
repo: addyosmani/agent-skills
author: Addy Osmani
license: MIT
category: coding-and-devtools
category_name: 开发与调试
subcategory: frontend-page-generation
subcategory_name: 前端页面 / 小应用生成
recommendation_slot: advanced
status: recommended
difficulty: intermediate
stars: "约 43.5k"
forks: "约 4.8k"
latest_release: "未按 releases 分发"
checked_at: 2026-05-19
starter_path: ""
tutorial_path: ""
collection_path: ../../collections/coding-and-devtools.md
tags:
  - frontend
  - ui-engineering
  - accessibility
  - responsive
  - state-management
---

# frontend-ui-engineering

## 基本信息

- 来源链接：https://github.com/addyosmani/agent-skills/tree/main/skills/frontend-ui-engineering
- 作者或组织：Addy Osmani
- 仓库或项目名称：`addyosmani/agent-skills`
- 许可证：MIT
- GitHub stars：约 43.5k
- Forks：约 4.8k
- 最近更新时间：以仓库 main 分支为准，未按 releases 分发
- 核查日期：2026-05-19
- 收录状态：推荐

## 一句话说明

`frontend-ui-engineering` 是一个面向真实前端项目的工程型 Skill，强调组件结构、状态管理、响应式、空状态、错误状态和可访问性。

## 适合谁

- 已经在真实项目里写前端页面的人。
- 想让 Agent 生成的页面更像工程代码，而不只是好看的静态稿。
- 需要内部工具、控制台、列表页、表单页和复杂组件的人。

## 典型场景

- AI Skill Hub 首页。
- 管理后台页面。
- Agent 任务运行台。
- 需要搜索、筛选、空状态和错误状态的工具页。

## 怎么使用

最短路径：

1. 把 `frontend-ui-engineering` 的 `SKILL.md` 安装或复制到 Agent 可读取的位置。
2. 给出页面目标、数据结构、交互要求和状态要求。
3. 明确要求组件拆分、键盘访问、响应式和错误 / 空 / 加载状态。
4. 生成后检查组件是否过大、交互是否可用、移动端是否完整。

## 示例输入

```text
请使用 frontend-ui-engineering，帮我做一个 AI Skill Hub 首页。

要求：
- React + TypeScript。
- 有分类筛选、搜索、空状态、移动端布局。
- Skill 卡片包含名称、适合谁、难度、推荐位、是否有 starter。
- 组件结构要清楚，交互元素要能键盘访问。
```

## 预期输出

- 结构清楚的前端页面或组件方案。
- 明确处理搜索、筛选、空状态、错误状态、加载状态。
- 更适合接入真实项目继续维护。

## 优点

- 工程约束最完整。
- 对复杂页面和内部工具页尤其稳。
- 不绑定特定模型服务或媒体生成 API。
- 很适合作为进阶推荐。

## 限制

- 视觉冲击力不一定最强。
- 对完全小白来说概念偏工程化。
- 如果做首页或营销页，最好搭配视觉型 Skill。

## 风险和注意事项

- 仍需要人工检查真实项目里的依赖、设计系统和代码风格。
- 不要让 Agent 一次改太大范围。
- 对涉及仓库改动的任务，要复核 diff 和运行结果。

## 结论

推荐作为“前端页面 / 小应用生成”的进阶路线。它负责让页面别乱、代码别散，适合真实项目。
