---
id: scholarflow
name: ScholarFlow
source_type: github
source_url: https://github.com/CHB-learner/scholarflow-claude-skills
repo: CHB-learner/scholarflow-claude-skills
author: CHB-learner
license: MIT
category: learning-and-research
category_name: 学习与研究
subcategory: paper-reading
subcategory_name: 论文阅读
recommendation_slot: remixable
status: recommended
difficulty: advanced
stars: ""
forks: ""
latest_release: "无 release，按 codex-skill 分支核查"
checked_at: 2026-05-21
starter_path: ""
tutorial_path: ""
collection_path: ../../collections/learning-and-research.md
tags:
  - paper-reading
  - obsidian
  - arxiv
  - literature-review
  - codex-skill
---

# ScholarFlow

## 基本信息

- 来源链接：https://github.com/CHB-learner/scholarflow-claude-skills
- 作者或组织：CHB-learner
- 仓库或项目名称：`CHB-learner/scholarflow-claude-skills`
- 许可证：MIT
- GitHub stars：暂未记录
- Forks：暂未记录
- 最新发布：暂无 release，按 `codex-skill` 分支核查
- 核查日期：2026-05-21
- 收录状态：推荐，论文阅读可改造路线

## 一句话说明

ScholarFlow 是一套面向论文推荐、论文精读、方向调研和 Obsidian 知识库沉淀的 Skill 工作流。它更像一个中文论文工作台骨架，不是一个最轻量的小白阅读器。

## 适合谁

- 已经有论文阅读习惯，想把论文推荐、精读笔记和知识库结构固定下来的人。
- 使用 Obsidian，或者愿意把输出整理成类似 vault 结构的人。
- 能接受 Python、arXiv、PDF 提取、环境变量和本地目录配置的轻技术用户。
- 想拿一个现成论文工作流继续二次改造的人。

## 不适合谁

- 第一次接触 Skill，只想快速读懂一篇 PDF 的完全小白。
- 不想处理 Python 环境、网络证书、PDF 下载和本地目录的人。
- 想做通用网页调研、公司调研、竞品调研的人。ScholarFlow 的强项是论文，不是所有研究任务。
- 不使用本地知识库，也不打算沉淀长期论文笔记的人。

## 典型场景

- 每天或每周按关键词抓取近期论文，生成推荐列表。
- 针对一个研究方向做轻量调研，保存候选论文和 summary。
- 对一篇 arXiv 论文生成中英双语深度笔记。
- 把论文笔记沉淀到 Obsidian 的 `Dailypaper/`、`Research_Fields/`、`未分类/` 结构里。

## 怎么使用

最短路径：

1. 使用仓库的 `codex-skill` 分支，而不是默认的 Claude Code 多 skill 结构。
2. 把 `skills/scholarflow/` 安装到 `~/.codex/skills/scholarflow/`。
3. 按示例配置 `scripts/_shared/user-config.local.json`，至少设置 vault 路径、每日论文关键词和研究方向。
4. 先用一篇公开 arXiv 论文做烟测，例如 `Attention Is All You Need`。
5. 确认 PDF 下载、文本提取、图片提取、双语笔记和 summary 都写到预期目录后，再接入自己的真实知识库。

第一次不要直接让它跑完整论文库。先建一个临时 vault，确认输出结构符合预期。

## 示例输入

```text
请用 ScholarFlow 读一下 Attention Is All You Need：
https://arxiv.org/abs/1706.03762

要求：
- 输出到一个本地测试 vault。
- 生成英文笔记和中文笔记。
- 保留 PDF、提取文本和图片。
- 不写入我的真实 Obsidian 库。
```

## 预期输出

正常情况下，它应该在配置的 vault 下生成类似结构：

```text
{vault}/
└── 未分类/
    ├── summary.md
    └── papers/
        └── AttentionIsAllYouNeed/
            ├── AttentionIsAllYouNeed.pdf
            ├── AttentionIsAllYouNeed_en.md
            ├── AttentionIsAllYouNeed_zh.md
            └── pngs/
```

如果论文匹配到已有研究方向，则会进入 `Research_Fields/{方向}/papers/{MethodName}/`。

## 优点

- 中文用户友好，触发词和输出习惯贴近中文论文阅读。
- 有论文推荐、方向调研、单篇精读三条路线。
- 输出目录清楚，适合长期维护 Obsidian 论文知识库。
- 不只是 prompt，仓库里包含抓取、去重、诊断、summary 更新等脚本。
- `codex-skill` 分支已经整理成单一 `scholarflow` 入口，更适合 Codex 使用。

## 限制

- 依赖 Python 环境、网络和 PDF 处理能力，环境坏了会直接影响体验。
- 深度笔记质量仍取决于 Agent 是否严格按模板执行，不是脚本完全自动保证。
- 对完全小白来说流程偏长，第一次使用最好有人或教程带着跑。
- 更偏论文和 Obsidian，不适合通用 deep research。

## 风险和注意事项

- 不要一开始写入真实 Obsidian vault，先用临时目录试跑。
- 如果会联网抓论文，要检查来源、证书和下载失败诊断。
- 如果处理未公开论文、内部资料或付费 PDF，要确认版权和隐私边界。
- 第三方社区 Skill 需要先审脚本，不要无脑执行所有命令。

## 结论

推荐放在“论文阅读”的可改造位。它不是最省心的小白入口，也不是 Oh My Paper 那种完整科研系统，但非常适合改造成中文个人论文工作台。
