# Datawhale 立项申请稿

## 项目名称

AI Skills for Everyone：人人都能用的开源 AI 技能库

## 项目状态

立项申请版。

当前已经完成第一条样板路线：用开源 PPT Skill 生成可编辑 PPT。项目已有教程、starter、Skill 卡片、场景合集、评审流程和第三方内容处理原则。

## 项目简介

本项目面向普通学习者和办公用户，搜罗并评审高质量开源 AI Skill，按场景提供中文教程、开箱 starter、风险说明和使用路线，帮助不会写代码的人也能低成本使用开源 AI 能力。

项目不是 AI 工具大全，也不是 GitHub 链接合集。我们按真实任务分类，每个小类尽量只保留 2 到 3 个推荐位：最省心、进阶、可改造。

## 为什么要做

现在网上已经有不少开源 AI Skill、Agent workflow、prompt pack 和自动化项目。普通用户真正卡住的地方不是“没有工具”，而是：

- 不知道哪个项目适合自己的任务。
- 看不懂 GitHub README。
- 不知道要装 Python、Node.js、npx 还是 API Key。
- 不知道一个项目是否还在维护、许可证是否清楚。
- GitHub 打不开时不知道怎么处理。
- Agent 弹出英文命令时不知道能不能点确认。

这个项目想做的是一层中文筛选和上手包装：先帮用户判断，再给出能走通的路线。

## 项目受众

- 完全小白：第一次接触 Agent、Skill、GitHub，希望先跟着教程做出东西。
- 普通办公用户：想用开源 Skill 做 PPT、周报、邮件、会议纪要、文档摘要、表格分析。
- 轻技术用户：会用 Trae、VS Code Copilot Agent 或命令行型 Agent，想快速找到靠谱 Skill。
- 开源贡献者：愿意帮忙搜罗、试用、评审和补中文说明。

## 已完成内容

- 第 0 课到第 5 课教程主线。
- `kits/ppt-master-starter/`：PPT Master 开箱工作区。
- `catalog/INDEX.md`：Skill Hub 总表。
- `catalog/writing-and-office/ppt-master.md`：PPT Master 卡片。
- `catalog/writing-and-office/gpt-image2-ppt-skills.md`：GPT Image2 PPT Skills 卡片。
- `collections/writing-and-office.md`：写作与办公合集。
- `docs/curation-guide.md`：收录标准。
- `docs/review-process.md`：Skill 评审流程。
- `docs/third-party-policy.md`：第三方 Skill 处理原则。
- GitHub issue / PR 模板。

## 第一阶段目标

1. 先把 PPT 生成场景做成完整样板。
2. 补齐写作与办公高频小类：周报、商务邮件、会议纪要、长文档摘要、表格分析。
3. 每个小类先收 3 个候选来源，再筛成 2 到 3 个正式推荐位。
4. 对复杂但值得推荐的 Skill，补 starter 工作区。
5. 形成一套稳定的贡献、评审、复核和第三方内容处理流程。

## 项目特色

- 面向普通人，而不是只面向开发者。
- 不堆链接，每个小类只保留少数精选推荐。
- 先做出结果，再讲概念。
- 对每个正式 Skill 记录来源、许可证、核查日期、适合场景、限制和风险。
- 对复杂 Skill 提供 starter，固定输入目录、提示词、输出位置和排错说明。
- 明确第三方 Skill 边界，不把别人的内容包装成自己的。

## 现有样板

PPT 生成小类现在有三条路线：

| 推荐位 | 条目 | 说明 |
| --- | --- | --- |
| 最省心 | PPT Master Starter | 普通人按教程生成可编辑 `.pptx`。 |
| 进阶 | PPT Master | 适合愿意处理依赖和 Agent 配置的人。 |
| 进阶视觉路线 | GPT Image2 PPT Skills | 适合追求视觉效果、能配置图片生成 API 的用户。 |

## 风险和处理

| 风险 | 处理方式 |
| --- | --- |
| 项目变成链接大全 | 每个小类限制推荐位，候选不直接进入正式推荐。 |
| 普通人跑不起来 | 对复杂 Skill 做 starter，写清楚输入、提示词、输出和排错。 |
| 许可证不清楚 | 不放入正式推荐，不复制内容，只放候选。 |
| 第三方内容边界不清 | 写明第三方 Skill 按原项目许可证，不由本仓库重新授权。 |
| 用户上传敏感材料 | 在教程、starter、卡片里反复提醒隐私和版权风险。 |
| 用户误执行危险命令 | 要求 Agent 执行命令前先用中文说明用途、联网、读写范围和风险。 |

## 许可证

本项目采用双许可证：

- 文档、教程、Skill 卡片、评测、整理内容：CC BY-NC-SA 4.0。
- 脚本、配置、检查工具和代码片段：MIT。
- 第三方 Skill、第三方项目、原始代码、模型、模板、图片、字体、数据和文档：按对应原项目许可证。

## 希望得到的支持

- Datawhale 立项评审建议。
- 对项目受众、目录设计和章节结构的建议。
- 对许可证、第三方内容边界和贡献流程的建议。
- 后续如果立项通过，希望迁移或接入 Datawhale 组织仓库。

## 当前仓库

https://github.com/nameless0120/ai-skills-for-everyone
