---
id: web-artifacts-builder
name: web-artifacts-builder
source_type: github
source_url: https://github.com/anthropics/skills/tree/main/skills/web-artifacts-builder
repo: anthropics/skills
author: Anthropic
license: Apache-2.0
category: coding-and-devtools
category_name: 开发与调试
subcategory: frontend-page-generation
subcategory_name: 前端页面 / 小应用生成
recommendation_slot: remixable
status: recommended
difficulty: advanced
stars: "约 137k"
forks: "约 16.2k"
latest_release: "无 releases"
checked_at: 2026-05-19
starter_path: ""
tutorial_path: ""
collection_path: ../../collections/coding-and-devtools.md
tags:
  - frontend
  - artifact
  - react
  - tailwind
  - shadcn-ui
---

# web-artifacts-builder

## 基本信息

- 来源链接：https://github.com/anthropics/skills/tree/main/skills/web-artifacts-builder
- 作者或组织：Anthropic
- 仓库或项目名称：`anthropics/skills`
- 许可证：Apache-2.0
- GitHub stars：约 137k
- Forks：约 16.2k
- 最近更新时间：以仓库 main 分支为准，暂无 releases
- 核查日期：2026-05-19
- 收录状态：推荐

## 一句话说明

`web-artifacts-builder` 是一个复杂网页 artifact 构建 Skill，带 React + TypeScript + Vite + Tailwind + shadcn/ui 脚手架和单文件打包路线。

## 适合谁

- 想做复杂内部页面、工具台、控制台或交互 artifact 的人。
- 能接受 Node、pnpm、脚本和依赖安装的轻技术用户。
- 想把生成结果打包成单 HTML artifact 的开发者。

## 典型场景

- 内部管理页面。
- Agent 任务运行台。
- 多组件工具页。
- 需要本地打包分享的复杂 artifact。

## 怎么使用

最短路径：

1. 进入 `web-artifacts-builder` 目录。
2. 按官方说明运行初始化脚本创建 React 项目。
3. 在生成的项目里实现页面。
4. 使用打包脚本生成单文件 HTML artifact。
5. 打开打包结果，检查交互和移动端。

## 示例输入

```text
请使用 web-artifacts-builder，帮我做一个 Agent 任务运行台。

要求：
- React + TypeScript。
- 有任务步骤、命令审核、文件改动、日志区域。
- 可以按风险等级过滤命令。
- 最后打包成单文件 HTML。
```

## 预期输出

- 一个复杂前端 artifact 工程。
- 可继续编辑的 React 代码。
- 可打包分享的单文件 HTML。

## 优点

- 有真实脚手架和打包脚本。
- 适合复杂交互页面。
- 对内部工具台比简单展示页更合适。

## 限制

- 对简单单页来说太重。
- 需要 Bash、Node、pnpm 和依赖安装。
- 更像构建工具箱，不是单纯设计 Skill。

## 风险和注意事项

- 脚本会安装依赖并创建工程，普通用户要先看命令说明。
- 生成结果仍需要检查交互、移动端和依赖体积。
- 不要把敏感项目文件直接交给未配置好边界的 Agent。

## 结论

推荐作为“前端页面 / 小应用生成”的可改造路线，尤其适合内部页面和复杂 artifact。
