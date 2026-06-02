<h1 align="center"> AI Skills for Everyone：人人都能用的开源 AI 技能库（⚠️ Alpha内测版） </h1>

> [!CAUTION]
> ⚠️ Alpha内测版本警告：此为早期内部构建版本，尚不完整且可能存在错误，欢迎大家提 Issue 反馈问题或建议。

AI Skills for Everyone 是一个面向普通人的开源 AI Skill 精选库。

现在网上已经有很多开源 AI Skill、Agent workflow、prompt pack 和自动化项目。问题是，普通用户常常不知道哪个项目适合自己，也看不懂原始 GitHub README，更不知道要不要装 Python、Node.js、npx、API Key。

这个项目想做的是中间那一层：先帮你筛选，再帮你跑通。我们按真实任务场景搜罗高质量开源 Skill，每个小类尽量只保留 2 到 3 个推荐位：

- 最省心：普通人优先试，最好有教程、starter 或清楚的上手路线。
- 进阶：功能更完整，但需要一点环境配置或 Agent 使用经验。
- 可改造：适合轻技术用户或开发者继续改造成自己的流程。

第一条完整样板是 PPT 生成。你可以跟着第 1 课，用开源 PPT Skill 把一份材料生成可编辑的 `.pptx`。现在也补了周报 / 状态更新、后端接口沟通两个轻 Skill 和 starter，并开始收录前端页面生成类 Skill。后续会继续补邮件、会议纪要、长文档摘要、表格分析等场景。

## 项目受众

本项目主要面向四类读者：

- 完全小白：不知道 GitHub、Agent、Skill 是什么，但愿意跟着教程做出一个结果。
- 普通办公用户：想用开源 Skill 做 PPT、周报、邮件、会议纪要、文档摘要、表格分析。
- 轻技术用户：会用 Trae、VS Code Copilot Agent 或命令行型 Agent，想快速找到靠谱 Skill。
- Skill 维护者和贡献者：愿意帮忙搜罗、试用、评审和补中文说明。

你不需要先懂 GitHub、命令行、Python、Node.js。教程会先带你跑通一个真实案例。等你真的做出东西，再继续看怎么找 Skill、怎么判断 Skill、怎么使用这个 Skill Hub。

## 在线阅读

暂未上线。

如果后续 Datawhale 立项通过，再补在线阅读地址。

## 目录

| 章节名 | 简介 | 状态 |
| ---- | ---- | ---- |
| [第 0 课：先选你的路线](tutorial/00-getting-started.md) | 按你的基础选择阅读路线。完全小白、用过 Agent 的人、用过 Skill 的人，都可以从这里找到入口。 | ✅ |
| [第 1 课：用开源 PPT Skill 生成可编辑 PPT](tutorial/01-use-ppt-skill.md) | 跑通第一个真实案例：用开源 PPT Skill 生成可编辑 `.pptx`。 | ✅ |
| [第 2 课：用 Trae 安装已知 Skill，再按需求找到新 Skill](tutorial/02-find-and-install-skills.md) | 已知项目地址时怎么安装；只有需求时怎么找候选 Skill。 | ✅ |
| [第 3 课：使用我们维护的 Skill 库](tutorial/03-use-skill-library.md) | 学会从场景合集、Skill 卡片和 starter 里选路线。 | ✅ |
| [第 4 课：把自己的重复工作搓成 Skill](tutorial/04-make-your-own-skill.md) | 把重复任务整理成固定输入、固定步骤、固定输出、样例和提示词。 | ✅ |
| [第 5 课：Agent 使用进阶](tutorial/05-agent-advanced.md) | 了解不同 Agent、API Key、自定义模型和命令确认。 | ✅ |
| [第 6 课：用 Skills Manager 管理多个 Skill](tutorial/06-manage-many-skills.md) | 用假 Skill 试跑导入、preset 和同步流程，适合已经有多个 Skill 的进阶用户。 | ✅ |
| [PPT Master Starter](kits/ppt-master-starter/README.md) | 第 1 课配套工作区，普通用户可以直接跟着操作。 | ✅ |
| [Weekly Status Starter](kits/weekly-status-starter/README.md) | 把零散工作记录整理成周报或项目状态更新。 | ✅ |
| [Backend API Brief Starter](kits/backend-api-brief-starter/README.md) | 把普通业务需求整理成给自己看的接口说明和给开发看的后端交接稿。 | ✅ |
| [Skill Hub 总表](catalog/INDEX.md) | 按大类、小类和推荐位整理已收录 Skill。 | 🚧 |
| [写作与办公合集](collections/writing-and-office.md) | 周报、邮件、会议纪要、PPT、表格、SOP 等办公场景。 | 🚧 |
| [开发与调试合集](collections/coding-and-devtools.md) | 前端页面、小应用生成、后端、测试、部署和日志分析。 | 🚧 |
| [Datawhale 立项申请稿](docs/datawhale-proposal.md) | 面向 Datawhale 的项目申请材料。 | ✅ |
| [第三方 Skill 处理原则](docs/third-party-policy.md) | 第三方 Skill、备用下载、许可证和镜像边界。 | ✅ |

## 贡献者名单

| 姓名 / ID | 职责 | 简介 |
| :---- | :---- | :---- |
| nameless0120 | 项目负责人 | 项目发起人，负责立项、教程主线、PPT 样板和 Skill Hub 结构。 |

## 参与贡献

- 如果你发现了一些问题，可以提 Issue 进行反馈，如果提完没有人回复你可以联系 [保姆团队](https://github.com/datawhalechina/DOPMC/blob/main/OP.md) 的同学进行反馈跟进。
- 如果你想参与贡献本项目，可以提 Pull Request，如果提完没有人回复你可以联系 [保姆团队](https://github.com/datawhalechina/DOPMC/blob/main/OP.md) 的同学进行反馈跟进。
- 如果你对 Datawhale 很感兴趣并想要发起一个新的项目，请按照 [Datawhale 开源项目指南](https://github.com/datawhalechina/DOPMC/blob/main/GUIDE.md) 进行操作即可。

你也可以先阅读：

- [贡献指南](CONTRIBUTING.md)
- [收录标准](docs/curation-guide.md)
- [Skill 评审流程](docs/review-process.md)
- [第三方 Skill 处理原则](docs/third-party-policy.md)

## 关注我们

<div align=center>
<p>扫描下方二维码关注公众号：Datawhale</p>
<img src="https://raw.githubusercontent.com/datawhalechina/pumpkin-book/master/res/qrcode.jpeg" width = "180" height = "180">
</div>

## LICENSE

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="知识共享许可协议" style="border-width:0" src="https://img.shields.io/badge/license-CC%20BY--NC--SA%204.0-lightgrey" /></a><br />

本项目采用双许可证：

- 原创文档、教程、Skill 卡片、评测和整理内容采用 [知识共享署名-非商业性使用-相同方式共享 4.0 国际许可协议](LICENSE-CONTENT.md) 进行许可。
- 本项目自己编写的脚本、配置、检查工具和代码片段采用 [MIT License](LICENSE-CODE.md) 进行许可。
- 第三方 Skill、第三方项目、原始代码、模型、模板、图片、字体、数据和文档按对应原项目许可证处理。

除非明确说明，本仓库不对第三方项目内容重新授权。
