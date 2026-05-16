# 第 2 课：用 Trae 安装已知 Skill，再按需求找到新 Skill

第 1 课里，你已经用 PPT Starter 跑通了一次。  
这一课换一个角度：如果你在网上看到一个 Skill 地址，怎么让 Trae 帮你尽快装起来、跑起来？如果你还不知道地址，又该怎么按自己的需求去找？

这节课分两条路：

- 路线 A：我已经知道 Skill 地址。
- 路线 B：我只有需求，还不知道用哪个 Skill。

普通人最容易卡在中间：看到一个 GitHub 链接，以为复制给 AI 就万事大吉。其实不行。你要先让 Trae 判断它是什么类型、怎么安装、会不会联网、有没有安全风险，再让它动手。

## 路线 A：已经知道 Skill 地址

比如你已经知道这个地址：

```text
https://github.com/hugohe3/ppt-master
```

或者别人发给你一个 Skill 仓库、一个 `SKILL.md`、一个 prompt pack、一个 Agent workflow。

### 第 1 步：先建一个干净工作区

不要在桌面上随便解压一堆文件。

建议固定放在：

```text
D:\ai-skills\
```

或者你的文档目录里：

```text
Documents\ai-skills\
```

每个 Skill 单独一个文件夹，比如：

```text
ai-skills/
└── ppt-master-starter/
```

然后用 Trae 打开这个文件夹。

### 第 2 步：把地址交给 Trae，但先不让它执行

复制下面这段给 Trae Agent：

```text
我想安装并试用这个开源 Skill：
[把 GitHub 地址或项目地址粘贴到这里]

我的目标是：
[写一句普通话，比如：把 PDF 或 Markdown 材料生成可编辑 PPT]

请你先不要执行任何命令。

请先用中文帮我判断：
1. 这个项目是不是一个 Skill、workflow、prompt pack，还是普通代码项目？
2. 它需要哪些基础环境，比如 Python、Node.js、npx、Git？
3. 最推荐的安装方式是什么？
4. 如果我打不开 GitHub，有没有 ZIP 或本地文件夹路线？
5. 它会不会联网下载依赖？
6. 它会读写哪些目录？
7. 有没有明显的安全、隐私、版权或许可证风险？

请先给我一个中文安装计划。等我确认后，你再一步步执行。
每条命令执行前，都要用中文说明：这条命令做什么、为什么需要、会不会联网、会改哪里。
```

这一步的重点不是“让 Trae 立刻装”，而是让它先读懂项目。

### 第 3 步：让 Trae 选择安装路线

Trae 可能会给你几种路线：

- `git clone`：适合 GitHub 能正常打开的人。
- 下载 ZIP：适合 GitHub 经常打不开的人。
- `npx skills add ...`：适合明确支持这种安装方式的 Skill。
- 本地文件夹接入：适合你已经解压好了项目。
- 只复制 prompt 或 `SKILL.md`：适合没有复杂依赖的小 Skill。

不要看到命令就直接点确认。先让 Trae 说清楚。

如果你这台电脑打不开 GitHub，可以直接回复：

```text
我这台电脑经常打不开 GitHub。
请不要优先使用 git clone。
请优先走 ZIP、本地文件夹或备用下载路线。
如果必须联网，请先告诉我原因和替代方案。
```

### 第 4 步：先跑最小测试

装好以后，不要马上拿正式材料跑。

先让 Trae 做一个最小测试：

```text
请用这个 Skill 跑一次最小测试。

要求：
- 使用项目自带样例；如果没有样例，请你创建一份假的测试输入。
- 输出文件放在 outputs/ 或你明确告诉我的目录里。
- 不要处理我的正式材料。
- 测试完成后告诉我：输入是什么、执行了什么、输出文件在哪里、是否成功。
```

只有最小测试通过了，再换自己的材料。

### 第 5 步：把安装过程沉淀成自己的 starter

如果这个 Skill 以后还会用，就别每次重新安装。

让 Trae 帮你整理成一个小工作区：

```text
请把这次安装和测试过程整理成一个 starter 工作区。

至少包含：
- START_HERE.md：普通用户怎么开始
- inputs/：以后放材料
- outputs/：以后放结果
- prompts/normal-use.txt：日常使用提示词
- troubleshooting.md：这次遇到的问题和解决办法

文字请写给普通人看，不要只写技术说明。
```

这一步很关键。真正能复用的不是某个命令，而是一套固定流程。

## 路线 B：只有需求，还不知道用哪个 Skill

如果你还没有地址，先别急着搜项目名。先把需求写清楚。

### 第 1 步：写一段需求说明

复制这个模板：

```text
我想找一个开源 Skill 或 Agent workflow，帮我完成这个任务：
[写你的任务]

我的输入通常是：
[PDF / DOCX / Excel / 会议记录 / 聊天记录 / Markdown / 网页 / 图片说明]

我希望输出是：
[PPT / 周报 / 会议纪要 / 分析报告 / SOP / 邮件 / 表格]

我的使用环境是：
[Trae / VS Code Copilot Agent / 命令行型 Agent / 其他能读写本地文件的 Agent]

我的限制是：
[GitHub 经常打不开 / 不懂命令行 / 不能上传敏感材料 / 预算低 / 需要中文]

请帮我把这个需求拆成搜索关键词，并告诉我应该优先找哪类 Skill。
```

把这段发给 Trae。你要的不是“立刻推荐一个”，而是让它先帮你把需求翻译成可搜索的问题。

### 第 2 步：让 Trae 生成搜索关键词

可以要求 Trae 输出中文和英文关键词：

```text
请根据我的需求，给我 10 组搜索关键词。

要求：
- 包含中文关键词和英文关键词。
- 包含 GitHub 搜索用词。
- 包含可能出现的项目类型，比如 skill、agent workflow、prompt pack、automation、template。
- 不要只给泛泛的 AI 工具名。
```

比如你要找“会议纪要”，关键词可能是：

```text
meeting notes agent workflow
meeting minutes AI skill
transcript to action items
Claude skill meeting summary
SKILL.md meeting notes
会议纪要 AI workflow
录音转写 会议纪要 agent
```

### 第 3 步：先从场景合集找

本仓库会先按场景整理：

- [写作与办公](../collections/writing-and-office.md)
- [学习与研究](../collections/learning-and-research.md)
- [内容创作](../collections/content-creation.md)
- [开发与调试](../collections/coding-and-devtools.md)
- [自动化流程](../collections/automation-workflows.md)

如果这里已经有条目，先看这里。  
如果没有，再去 GitHub、官方示例库、社区合集里找。

### 第 4 步：让 Trae 帮你筛候选

找到 3 到 5 个候选项目后，不要急着装。

把链接发给 Trae，用这个提示词：

```text
下面是我找到的几个候选 Skill 或开源项目：
[粘贴链接列表]

我的目标是：
[写你的任务]

请你帮我做一个对比表，不要执行命令。

对比维度：
1. 它解决什么任务。
2. 是否适合 Trae 这种本地 Agent 使用。
3. 普通人安装难度：低 / 中 / 高。
4. 是否有清楚 README、示例、许可证。
5. 是否需要 Python、Node.js、npx、Docker 或其他依赖。
6. GitHub 打不开时是否还能安装。
7. 是否适合做成 starter kit。
8. 你建议我优先试哪一个，为什么。
```

看完对比表，再选一个最适合的。

## 怎么判断它适不适合普通人

先看这几个信号：

| 信号 | 好迹象 | 坏迹象 |
| --- | --- | --- |
| README | 有安装、示例、输出说明 | 只有宣传，没有步骤 |
| 许可证 | MIT、Apache-2.0 等写清楚 | 没写许可证 |
| 依赖 | Python / Node 这类常见依赖 | Docker、复杂云服务、很多账号配置 |
| 输入输出 | 说明输入文件和输出结果 | 只说“提升效率” |
| 维护状态 | 最近还在更新 | 长期无人维护 |
| 普通人路线 | 能做 ZIP、本地文件夹、starter | 只能开发者自己改代码 |

普通人路线很重要。一个项目再强，如果每次都要手动改源码、配一堆环境变量，就不适合放在教程前面。

## 本课练习

任选一个任务：

```text
做周报
整理会议纪要
把表格数据变成分析报告
生成培训 PPT
把客户反馈整理成分类和建议
```

然后做两件事：

1. 用“路线 B”的模板，让 Trae 帮你生成搜索关键词。
2. 找到一个候选地址后，用“路线 A”的模板，让 Trae 先给中文安装计划。

不要急着执行命令。第二课练的是判断和拆解，先把路线看清楚，再动手。
