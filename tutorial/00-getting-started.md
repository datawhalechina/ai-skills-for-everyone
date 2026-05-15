# 第 0 课：先选你的路线

别急着从第 1 课开始读。

不同人来这里，起点不一样。有的人第一次听说 Agent，有的人已经天天用 Trae 或 Cursor，有的人用过 Skill，只是想找更多现成的；还有的人已经会自己写工作流，只想看看这个项目怎么组织 Skill 库。

先按下面选一条路线。选完再往下看，会省很多时间。

## 我是完全小白

如果你不太清楚 GitHub、Agent、Skill、Python、Node.js 是什么，走这条。

你只需要先完成一个目标：用示例材料生成一份可编辑 PPT。

阅读顺序：

1. 先看本页，不需要看懂所有术语。
2. 去 [第 1 课：用开源 PPT Skill 生成可编辑 PPT](01-use-ppt-skill.md)。
3. 按第 1 课打开 [PPT Master Starter](../kits/ppt-master-starter/START_HERE.md)。
4. 如果 GitHub 打不开，看 [下载清单](../kits/ppt-master-starter/DOWNLOADS.md)。
5. 如果 Trae 弹出英文命令，看 [命令审核提示词](../kits/ppt-master-starter/prompts/command-review.txt)。

你暂时不用看第 2、3、4 课。先跑通一次，感觉会完全不一样。

## 我用过 Agent，但没用过 Skill

如果你已经用过 Trae、Cursor、Claude Code、Copilot Agent 或命令行型 Agent，但没装过 Skill，走这条。

你不需要从“什么是 Agent”开始。你的重点是：学会让 Agent 安装一个已知 Skill，或者按需求帮你找 Skill。

阅读顺序：

1. 快速扫一眼 [第 1 课](01-use-ppt-skill.md)，重点看 starter 是怎么组织输入、提示词和输出的。
2. 直接看 [第 2 课：用 Trae 安装已知 Skill，再按需求找到新 Skill](02-high-star-skills.md)。
3. 如果你已经有 GitHub 地址，走第 2 课里的“路线 A”。
4. 如果你只有需求，还不知道用哪个项目，走第 2 课里的“路线 B”。
5. 找到可用 Skill 后，再回到第 1 课的思路，把它整理成自己的 starter。

你最该记住的一点：不要让 Agent 一上来就执行命令。先让它用中文说明项目类型、依赖、安装路线、风险和替代方案。

如果你还想了解不同 Agent 的差别，或者想知道 Trae 里怎么处理自定义 API，可以继续看 [第 5 课：Agent 使用进阶](05-agent-advanced.md)。

## 我已经用过 Skill

如果你已经装过或用过 Skill，只是想找更多靠谱项目，走这条。

你的重点不是从零安装，而是学会读这个项目维护的 Skill 库。

阅读顺序：

1. 看 [第 3 课：使用我们维护的 Skill 库](03-use-skill-library.md)。
2. 去 [场景合集](../collections/README.md)，按任务找。
3. 去 [Skill 目录](../catalog/README.md)，看单个项目档案。
4. 优先试有 starter 的 Skill。
5. 没有 starter 的 Skill，用第 2 课的方法让 Trae 先做安装计划。

你可以把这个库当成一个中文筛选层。它不只是告诉你“这个项目在哪”，还会慢慢补：适合谁、难不难、怎么装、有没有风险、普通人能不能用。

## 我已经会搓 Skill

如果你已经会写 prompt、搭工作流、做 `SKILL.md`，甚至自己维护过 Agent 工具，走这条。

你可以直接看项目组织方式和贡献规则。

阅读顺序：

1. 看 [第 3 课：使用我们维护的 Skill 库](03-use-skill-library.md)，理解我们希望怎么组织条目。
2. 看 [第 4 课：把自己的重复工作搓成 Skill](04-make-your-own-skill.md)，重点看开头的“不要急着公开真经验”。
3. 看 [收录标准](../docs/curation-guide.md) 和 [评测标准](../docs/review-rubric.md)。
4. 看 [贡献指南](../CONTRIBUTING.md)。
5. 新增条目前，先复制 [Skill 卡片模板](../templates/skill-card-template.md)。

如果你要贡献自己的 Skill，请先做脱敏版。可以分享框架、步骤、样例和通用提示词，不要直接公开公司内部流程、客户案例、真实数据和自己多年攒出来的业务判断。

如果你想把自己的流程接到更复杂的本地环境里，再看 [第 5 课：Agent 使用进阶](05-agent-advanced.md)。

## 开始前检查

不管你选哪条路线，先确认这几件事：

- 你能安装并打开 Trae。
- 你知道自己的电脑能不能打开 GitHub。
- 你有一份可以测试的非敏感材料。
- 你愿意让 Agent 执行命令前先用中文解释。
- 你的材料里没有公司机密、客户隐私、合同、账号、财务数据。

如果这些都没问题，就从你对应的路线开始。

如果你拿不准，默认走“小白路线”。先把第 1 课跑通，别急着理解全部概念。
