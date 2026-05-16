<h1 align="center">AI Skills for Everyone：人人都能用的开源 AI 技能库（Alpha 立项申请版）</h1>

> [!CAUTION]
> 本仓库当前是 Datawhale 立项申请版，内容还在整理中。现在已经可以跟着第 1 课跑通 PPT Skill，后续会继续补 Skill 评审、场景合集和更多 starter。

本项目面向普通学习者和办公用户，搜罗并评审高质量开源 AI Skill，按场景提供中文教程、开箱 starter、风险说明和使用路线，帮助不会写代码的人也能低成本使用开源 AI 能力。

它不是 AI 工具大全，也不是 GitHub 链接合集。我们按真实任务分类，每个小类尽量只保留 2 到 3 个推荐位：

- 最省心：普通人优先试，最好有教程、starter 或清楚的上手路线。
- 进阶：功能更完整，但需要一点环境配置或 Agent 使用经验。
- 可改造：适合轻技术用户或开发者继续改造成自己的流程。

“最省心”不一定是另一个独立项目，也可能是同一个 Skill 的 starter 路线。重点是普通人能先跑起来。

## 项目受众

这个项目主要写给四类人：

- 完全小白：不知道 GitHub、Agent、Skill 是什么，但愿意跟着教程做出一个结果。
- 普通办公用户：想用开源 Skill 做 PPT、周报、邮件、会议纪要、文档摘要、表格分析。
- 轻技术用户：会用 Trae、VS Code Copilot Agent 或命令行型 Agent，想快速找到靠谱 Skill。
- Skill 维护者和贡献者：愿意帮忙搜罗、试用、评审和补中文说明。

你不需要先懂 GitHub、命令行、Python、Node.js。教程会先带你跑通一个真实案例：用开源 PPT Skill，把一份材料做成可编辑的 `.pptx`。等你真的做出东西，再继续看怎么找 Skill、怎么判断 Skill、怎么使用这个 Skill Hub。

## 在线阅读

暂未上线。

如果后续 Datawhale 立项通过，再补在线阅读地址。

## 先从这里开始

如果你第一次来，先看：

[第 0 课：先选你的路线](tutorial/00-getting-started.md)

它会告诉你：完全小白从哪开始，已经用过 Agent 但没用过 Skill 从哪开始，已经用过 Skill 从哪开始，已经会搓 Skill 的人又该看哪里。

如果你已经确定要先跑 PPT，再直接看：

[第 1 课：用开源 PPT Skill 生成可编辑 PPT](tutorial/01-use-ppt-skill.md)

如果你已经在操作 PPT，直接打开：

[PPT Master Starter 操作手册](kits/ppt-master-starter/START_HERE.md)

如果你已经会用 Agent，想直接看这个库收了什么，打开：

- [Skill Hub 总表](catalog/INDEX.md)
- [场景合集](collections/README.md)
- [Skill 目录](catalog/README.md)

## 目录

| 内容 | 简介 | 状态 |
| --- | --- | --- |
| [第 0 课：先选你的路线](tutorial/00-getting-started.md) | 按读者基础选择阅读路线。 | 已完成 |
| [第 1 课：用开源 PPT Skill 生成可编辑 PPT](tutorial/01-use-ppt-skill.md) | 面向完全普通用户，先跑通一个真实 PPT 生成案例。 | 已完成 |
| [第 2 课：用 Trae 安装已知 Skill，再按需求找到新 Skill](tutorial/02-find-and-install-skills.md) | 已知地址怎么装，只有需求时怎么找候选。 | 已完成 |
| [第 3 课：使用我们维护的 Skill 库](tutorial/03-use-skill-library.md) | 学会从场景合集、Skill 卡片和 starter 里选路线。 | 已完成 |
| [第 4 课：把自己的重复工作搓成 Skill](tutorial/04-make-your-own-skill.md) | 把重复任务整理成固定输入、步骤、输出和提示词。 | 已完成 |
| [第 5 课：Agent 使用进阶](tutorial/05-agent-advanced.md) | 了解不同 Agent、API Key 和命令确认。 | 已完成 |
| [PPT Master Starter](kits/ppt-master-starter/README.md) | 第 1 课配套工作区。 | 已完成 |
| [Skill Hub 总表](catalog/INDEX.md) | 按大类、小类和推荐位整理已收录 Skill。 | 建设中 |
| [写作与办公合集](collections/writing-and-office.md) | 周报、邮件、会议纪要、PPT、表格、SOP 等办公场景。 | 建设中 |
| [项目立项说明](docs/project-charter.md) | 项目目标、范围、交付物和成功标准。 | 已完成 |
| [Datawhale 立项申请稿](docs/datawhale-proposal.md) | 面向 Datawhale 的项目申请材料。 | 已完成 |
| [Skill 评审流程](docs/review-process.md) | 候选、观察中、可参考、推荐、不推荐怎么判断。 | 已完成 |
| [第三方 Skill 处理原则](docs/third-party-policy.md) | 第三方 Skill、备用下载、许可证和镜像边界。 | 已完成 |

## 当前样板

第一条完整样板是 PPT 生成。

已收录：

- [PPT Master](catalog/writing-and-office/ppt-master.md)：把 PDF、DOCX、URL、Markdown 或文字材料生成可编辑 `.pptx`。普通用户先看[第 1 课教程](tutorial/01-use-ppt-skill.md)，再打开 [PPT Master Starter](kits/ppt-master-starter/README.md)。
- [GPT Image2 PPT Skills](catalog/writing-and-office/gpt-image2-ppt-skills.md)：用 `gpt-image-2` 生成视觉风格更强的 PPT，适合进阶用户，需要图片生成 API 和费用意识。

## 当前进度

第一课已经能跑：PPT Master Starter 已经准备好，也补了 Trae、GitHub 打不开时的备用下载、中文命令审核这些普通人最容易卡住的地方。

后面会继续补：

- 更多写作与办公 Skill，并按小类补齐“最省心 / 进阶 / 可改造”推荐位。
- 周报 / 状态更新、商务邮件改写、会议纪要整理等高频办公小类。
- 第 0 课路线选择表格。
- 第 3 课 Skill 卡片阅读示例。
- 第 4 课“周报 Skill”样例文件夹。

## 参与贡献

你可以贡献这些内容：

- 推荐一个新的开源 Skill。
- 报告链接失效、版本过期或许可证信息不对。
- 提交一个 Skill 卡片。
- 补一个场景合集。
- 写一份实际试用记录。
- 改进普通人上手教程或 starter。

贡献前建议先看：

- [贡献指南](CONTRIBUTING.md)
- [收录标准](docs/curation-guide.md)
- [Skill 评审流程](docs/review-process.md)
- [第三方 Skill 处理原则](docs/third-party-policy.md)

GitHub 里也准备了 issue 模板和 PR 模板，可以直接使用。

如果本项目进入 Datawhale 立项流程，也会按 [Datawhale 开源项目指南](https://github.com/datawhalechina/DOPMC/blob/main/GUIDE.md) 和 [Datawhale 开源项目保姆团队说明](https://github.com/datawhalechina/DOPMC/blob/main/OP.md) 继续推进。

## 贡献者名单

| 姓名 / ID | 职责 | 说明 |
| --- | --- | --- |
| nameless0120 | 项目发起人 | 负责项目立项、教程主线、PPT 样板和 Skill Hub 结构。 |

后续贡献者会继续补在这里。

## 仓库结构

```text
ai-skills-for-everyone/
├── README.md
├── tutorial/                 # 教程正文，普通用户先看这里
├── kits/                     # 配套练习工作区
│   └── ppt-master-starter/
├── catalog/                  # Skill Hub 总表和单个 Skill 档案
├── collections/              # 按任务场景、小类和推荐位整理 Skill
├── appendix/                 # 附录：下载、排错、版权、安全
├── docs/                     # 项目维护、立项、收录规则和评审流程
├── skills/                   # 必要时存放许可证允许的 Skill 镜像或改造版
├── sources/                  # 候选来源
├── templates/                # 模板
├── reviews/                  # 试用记录
└── examples/
```

## LICENSE

<a rel="license" href="https://creativecommons.org/licenses/by-nc-sa/4.0/">
  <img alt="CC BY-NC-SA 4.0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" />
</a>

本项目采用双许可证：

- 原创文档、教程、Skill 卡片、评测、整理内容：采用 [CC BY-NC-SA 4.0](LICENSE-CONTENT.md) 协议。
- 本项目自己编写的脚本、配置、检查工具和代码片段：采用 [MIT](LICENSE-CODE.md) 协议。
- 第三方 Skill、第三方项目、原始代码、模型、模板、图片、字体、数据和文档：版权和许可证归原作者所有，请以对应原项目的 LICENSE 为准。

除非明确说明，本仓库不对第三方项目内容重新授权。
