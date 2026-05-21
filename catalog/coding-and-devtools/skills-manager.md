---
id: skills-manager
name: Skills Manager
source_type: github
source_url: https://github.com/xingkongliang/skills-manager
repo: xingkongliang/skills-manager
author: xingkongliang
license: MIT
category: coding-and-devtools
category_name: 开发与调试
subcategory: skill-management
subcategory_name: Skill 管理 / Agent 环境管理
recommendation_slot: advanced
status: reference
difficulty: intermediate
stars: "约 1.6k"
forks: "约 130"
latest_release: "v1.21.0"
checked_at: 2026-05-22
starter_path: ""
tutorial_path: ../../tutorial/06-manage-many-skills.md
collection_path: ../../collections/coding-and-devtools.md
tags:
  - skill-manager
  - agent-tools
  - sync
  - cli
---

# Skills Manager

## 基本信息

- 来源链接：https://github.com/xingkongliang/skills-manager
- 作者或组织：xingkongliang
- 仓库或项目名称：`xingkongliang/skills-manager`
- 许可证：MIT
- GitHub stars：约 1.6k
- Forks：约 130
- 最近 release：v1.21.0
- 核查日期：2026-05-22
- 收录状态：可参考

## 一句话说明

Skills Manager 是一个跨 Agent 的 Skill 管理器，用来把本地 Skill 收进中央库，再同步到 Claude Code、Codex、Cursor、Trae 等工具的 Skill 目录。

## 适合谁

- 已经装过多个 Skill，开始觉得手动复制和整理麻烦的人。
- 同时使用多个 Agent，希望统一管理 Skill 的人。
- 需要把 Skill 分组、打标签、备份或迁移的人。
- 愿意处理一点本地目录、同步模式和工具路径的人。

## 不适合谁

- 还没有跑通过任何 Skill 的完全新手。
- 只装 1 到 3 个 Skill 的普通用户。
- 不想理解中央库、工作区、preset 和同步目录的人。
- 服务器无图形界面用户，除非已经能接受 CLI 和源码构建。

## 典型场景

- 把写作、论文、PPT、前端开发等 Skill 分成不同 preset。
- 在多个 Agent 工具之间同步同一批 Skill。
- 给 Skill 打标签，按任务类型筛选。
- 用 Git 备份自己的 Skill 库。
- 在本地或服务器上用 CLI 检查、安装、导出 Skill。

## 怎么使用

最短路径：

1. 从 release 页面下载安装包。
2. 在 Settings 里确认中央库目录和同步模式。
3. 先创建一个假的 `hello-skill` 做 smoke test。
4. 从本地文件夹导入这个测试 Skill。
5. 建一个只包含测试 Skill 的 preset。
6. 用 Copy 模式同步到一个目标 Agent。
7. 确认目标目录出现文件，再让 Agent 验证是否识别。

详细步骤看：[第 6 课：用 Skills Manager 管理多个 Skill](../../tutorial/06-manage-many-skills.md)。

## 使用前依赖

| 依赖 | 是否必需 | 说明 |
| --- | --- | --- |
| 模型 / API key | 否 | 管理本地 Skill 不需要模型 key。 |
| 本地环境 | 是 | 桌面版需要对应系统安装包；CLI 源码路线需要 Node.js 和 Rust toolchain。 |
| 第三方账号 | 可选 | Git backup 需要 GitHub 或其他 Git 仓库权限。 |
| 网络访问 | 是 | 下载安装包、访问 GitHub、安装远程 Skill 或更新上游时需要网络。 |
| 本地路径 | 是 | 必须确认中央库目录、目标 Agent 的 Skill 目录和同步模式。 |

## 示例输入

```text
我已经有 10 个本地 Skill，想把它们分成写作、研究、前端开发三组，并同步到我常用的 Agent。
请先帮我设计 Skills Manager 的目录、preset 和测试顺序，不要直接批量导入。
```

## 预期输出

- 一个中央 Skill 库。
- 一组按任务划分的 preset。
- 同步到目标 Agent 的 Skill 文件夹。
- 可选的 Git 备份记录。

## 优点

- 解决多 Skill、多 Agent 时的整理和同步问题。
- 同时提供桌面界面和 CLI。
- 支持本地文件夹、Git 仓库、压缩包和 marketplace 等来源。
- 有 preset、标签、批量操作、日志和 Git backup。
- MIT 许可证，来源和边界比较清楚。

## 限制

- 它不是 Skill 本身，也不会判断 Skill 质量。
- 对完全新手来说概念偏多。
- 主体验偏图形界面；服务器 CLI 可用，但不是最轻路线。
- symlink 模式在不同 Agent 和系统环境里可能带来识别问题，第一次不建议使用。
- README 和 release 功能说明可能随版本变化，教程需要定期复核。

## 风险和注意事项

- 第一次不要导入真实工作资料，用假 Skill 做测试。
- 同步前确认目标 Agent 的 Skill 目录，不要靠猜。
- 默认优先 Copy 模式，确认稳定后再考虑 symlink。
- 批量删除、批量同步和 Git restore 前要先看 dry run 或备份。
- 如果 CLI 和桌面 app 同时使用，写入后可能需要刷新或重启桌面 app。

## 结论

可作为“Skill 管理 / Agent 环境管理”的进阶参考工具收录。它适合已经有多个 Skill 的用户，不适合作为新手第一课或最省心路线。
