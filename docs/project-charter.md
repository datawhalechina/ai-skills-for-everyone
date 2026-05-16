# AI Skills for Everyone 立项说明

这份文档用于说明项目为什么要做、做什么、不做什么，以及第一阶段怎么判断它有没有做成。当前定位是 Datawhale 立项申请版。

立项和结构来源：

- CNCF Contributors 的 Project Charter 建议：用 mission、scope、values / principles 说明一个开源项目的边界。
- `diggsweden/open-source-project-template`：一个 CC0-1.0 的开源项目模板，强调 README、CONTRIBUTING、治理、许可证和社区健康文件。
- `datawhalechina/repo-template`：Datawhale 中文开源项目仓库模板。本项目按它的教程型项目栏目组织 README 和立项材料，比如项目受众、目录、贡献方式和许可证说明。

本文不复制模板原文，而是按 Datawhale 立项口径和本项目实际情况整理。项目后续希望按 Datawhale 的立项流程继续推进。

## 项目名称

AI Skills for Everyone

## 一句话说明

一个面向普通人的开源优质 AI Skill 搜罗库：按真实场景筛选开源 Skill，为每个小类保留少数高质量推荐，并尽量补上普通人能跑通的教程和 starter。

## 背景

现在网上已经有不少开源 AI Skill、Agent workflow、prompt pack 和自动化项目。问题不在于没有东西，而是普通人很难判断：

- 哪个项目真的适合自己的任务。
- 哪个项目还在维护。
- 哪个项目许可证清楚。
- 哪个项目需要 Python、Node.js、API Key 或命令行。
- 哪个项目只是看起来很强，实际很难跑。
- GitHub 打不开时有没有备用路线。

很多普通用户第一次接触这些东西，会卡在安装、依赖、英文命令、目录结构和 API 配置上。这个项目想解决的不是“让所有人都学会开发”，而是把高质量开源 Skill 整理成普通人能理解、能选择、能开始用的路线。

## 目标用户

- 完全小白：不知道 GitHub、Agent、Skill 是什么，但愿意跟着教程做出一个结果。
- 普通办公用户：想用开源 Skill 做 PPT、周报、邮件、会议纪要、文档摘要、表格分析。
- 轻技术用户：会用 Trae、VS Code Copilot Agent 或命令行型 Agent，想快速找到靠谱 Skill。
- Skill 维护者和贡献者：愿意帮忙搜罗、试用、评审和补中文说明。

## 项目目标

第一阶段先做到这些：

1. 用 PPT 生成场景跑通第一条完整路径。
2. 建立一个按“大类 -> 小类 -> 推荐位”组织的 Skill Hub。
3. 每个小类尽量只保留 2 到 3 个推荐位：最省心、进阶、可改造。
4. 给正式 Skill 卡片补来源、许可证、stars、核查日期、适合场景、风险和结论。
5. 给复杂但值得推荐的 Skill 做 starter 工作区，让普通人少读 README、少猜命令、少碰不必要的配置。
6. 建立贡献和评审流程，让别人知道怎么推荐 Skill、怎么报坏链、怎么提 PR。

## 项目范围

会做：

- 搜罗开源 AI Skill、Agent workflow、prompt pack 和相关工具。
- 按写作与办公、学习与研究、内容创作、开发与调试、自动化流程等场景分类。
- 给每个小类维护“最省心 / 进阶 / 可改造”推荐位。
- 写中文 Skill 卡片、场景合集、教程、starter、排错说明和评测记录。
- 记录许可证、来源、核查日期、上手难度和风险。
- 为普通人提供“GitHub 打不开时怎么办”的备用路线说明。

不做：

- 不做 AI 工具大全。
- 不做 GitHub 链接堆砌。
- 不默认复制第三方 Skill 的完整内容。
- 不收录许可证不清的项目作为正式推荐。
- 不收录绕过规则、侵犯隐私、伪造身份或明显侵权的 Skill。
- 不鼓励用户公开自己的真实业务经验型 Skill。可以分享框架，真经验先留在本地。

## 第一阶段交付物

已经有或正在补的交付物：

- `tutorial/`：普通人跟着做的教程。
- `kits/ppt-master-starter/`：PPT Master 的开箱工作区。
- `catalog/`：单个 Skill 中文卡片。
- `catalog/INDEX.md`：Skill Hub 总表。
- `collections/`：按场景和小类整理的推荐清单。
- `docs/curation-guide.md`：收录标准。
- `docs/review-process.md`：候选到推荐的评审流程。
- `docs/third-party-policy.md`：第三方 Skill、备用下载、许可证和镜像边界。
- `.github/ISSUE_TEMPLATE/` 和 PR 模板：社区贡献入口。

按 Datawhale 模板口径，本项目已经补齐或准备补齐：

- README 里先说清楚项目面向谁。
- 用目录表告诉读者哪些内容已经完成、哪些还在补。
- 明确项目负责人和贡献入口。
- 许可证要放在显眼位置，不要让读者猜内容能不能复用。

这里使用的是本项目自己的文案，不直接复制模板占位内容。

## 当前样板

第一条完整样板是 PPT 生成。

当前已收录：

- PPT Master：适合生成可编辑 `.pptx`，已有普通人 starter。
- GPT Image2 PPT Skills：适合进阶用户生成高视觉风格 PPT，需要图片生成 API。

这两个项目展示了同一小类里不同推荐位的区别：

- 最省心：PPT Master Starter，先让普通人跑起来。
- 进阶：PPT Master 原项目，适合愿意处理依赖和 Agent 配置的人。
- 进阶视觉路线：GPT Image2 PPT Skills，适合愿意配置图片生成 API、追求视觉效果的人。

## 成功标准

第一阶段不看“收了多少链接”，先看这些：

- 一个完全小白能跟着第 1 课生成一份可编辑 PPT。
- 至少一个小类有完整的“最省心 / 进阶”路线。
- 每个正式 Skill 卡片都有 YAML frontmatter、许可证、核查日期和风险说明。
- 新贡献者能通过 issue 模板推荐 Skill。
- 维护者能按评审流程判断一个项目该放候选、观察中、可参考、推荐还是不推荐。
- 仓库里不包含生成的 PPT、PDF、压缩包、第三方完整源码、密钥和本地依赖目录。

## 许可证

本项目采用双许可证：

- 原创文档、教程、Skill 卡片、评测、整理内容：CC BY-NC-SA 4.0。
- 本项目自己编写的脚本、配置、检查工具和代码片段：MIT。
- 第三方 Skill、第三方项目、原始代码、模型、模板、图片、字体、数据和文档：按对应原项目许可证，不由本仓库重新授权。

## 主要风险

| 风险 | 处理方式 |
| --- | --- |
| 项目变成链接大全 | 每个小类限制 2 到 3 个推荐位，候选不直接进入正式推荐。 |
| 普通人跑不起来 | 对复杂 Skill 做 starter，固定输入、提示词、输出位置和排错说明。 |
| 许可证不清楚 | 不放入正式推荐，不复制内容，只进入候选。 |
| 备用下载引发版权或来源问题 | 只在许可证允许、来源清楚、版本清楚时提供备用下载，并优先链接原项目。 |
| 用户上传敏感材料 | 在教程、starter、卡片里反复提醒隐私、版权和公司机密风险。 |
| Skill 过期或失效 | 记录核查日期，高优先级 Skill 定期复核。 |
| 用户误执行危险命令 | 教程里要求 Agent 执行命令前先用中文解释用途、联网、读写范围和风险。 |

## 维护原则

- 少而精。宁可一个小类空着，也不凑数。
- 先按任务分类，再按项目分类。
- 先让普通人做出结果，再讲概念。
- Skill 卡片写清楚来源和边界，不把别人的成果包装成自己的。
- 对进阶 Skill 诚实说明门槛、费用和风险。
- 不把用户真正的业务经验、客户案例、公司内部 SOP 诱导到公开仓库。

## 下一步

近期优先级：

1. 继续补写作与办公里的周报、商务邮件、会议纪要候选。
2. 给每个小类先收 3 个候选来源，再筛正式推荐位。
3. 给第 0 课补“你该走哪条路线”的表格。
4. 给第 3 课补一张 Skill 卡片阅读示例。
5. 给第 4 课补一个“周报 Skill”样例文件夹。

## 模板和来源

- CNCF Contributors: Project Charter guidance  
  https://contribute.cncf.io/projects/best-practices/governance/charter/
- Digg Sweden: Open Source Project Template，CC0-1.0  
  https://github.com/diggsweden/open-source-project-template
- Datawhale China: repo-template，中文开源项目仓库模板  
  https://github.com/datawhalechina/repo-template
