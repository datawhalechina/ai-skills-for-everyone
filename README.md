# AI Skills for Everyone

一个给普通人看的开源优质 AI Skill 搜罗库。

我们按真实场景搜罗开源 Skill，不追求数量，不做链接堆砌。每个大类会拆成几个小类，每个小类尽量只留 2 到 3 个推荐位：

- 一个最简单、最方便开始用的。
- 一个更完整、更适合进阶使用的。
- 如果有必要，再留一个适合改造或开发者使用的。

“最省心”不一定是另一个独立项目，也可能是同一个 Skill 的 starter 路线。重点是普通人能先跑起来。

教程是入口，不是全部。你不需要先懂 GitHub、命令行、Python、Node.js。我们会先带你跑通一个真实案例：用开源 PPT Skill，把一份材料做成可编辑的 `.pptx`。等你真的做出东西，再继续看怎么找 Skill、怎么判断 Skill、怎么使用这个 Skill Hub。

## 先从这里开始

如果你第一次来，先看：

[第 0 课：先选你的路线](tutorial/00-getting-started.md)

它会告诉你：完全小白从哪开始，已经用过 Agent 但没用过 Skill 从哪开始，已经用过 Skill 从哪开始，已经会搓 Skill 的人又该看哪里。

如果你已经确定要先跑 PPT，再直接看：

[第 1 课：用开源 PPT Skill 生成可编辑 PPT](tutorial/01-use-ppt-skill.md)

这节课会带你完成一件具体的事：

1. 安装 Trae。
2. 打开本教程准备好的 `ppt-master-starter` 工作区。
3. 让 Trae 帮你检查环境。
4. 用示例材料跑一次测试。
5. 换成自己的材料，生成一个可编辑 PPT。

如果你已经在操作 PPT，直接打开：

[PPT Master Starter 操作手册](kits/ppt-master-starter/START_HERE.md)

如果你已经会用 Agent，想直接看这个库收了什么，打开：

- [Skill Hub 总表](catalog/INDEX.md)
- [场景合集](collections/README.md)
- [Skill 目录](catalog/README.md)

## 这套教程怎么走

0. [第 0 课：先选你的路线](tutorial/00-getting-started.md)  
   按你的基础跳转，不用每个人都从头读。

1. [第 1 课：用开源 PPT Skill 生成可编辑 PPT](tutorial/01-use-ppt-skill.md)  
   面向完全普通用户。目标是先跑通，不讲太多概念。

2. [第 2 课：用 Trae 安装已知 Skill，再按需求找到新 Skill](tutorial/02-find-and-install-skills.md)  
   已经有地址时，学会让 Trae 先判断、再安装、再测试；只有需求时，学会拆关键词、找候选、做筛选。

3. [第 3 课：使用我们维护的 Skill 库](tutorial/03-use-skill-library.md)  
   学会从场景合集、Skill 卡片和 starter 里找到最适合自己的使用路线。

4. [第 4 课：把自己的重复工作搓成 Skill](tutorial/04-make-your-own-skill.md)  
   从一个很小的工作流开始：固定输入、固定步骤、固定输出、样例和提示词。

5. [第 5 课：Agent 使用进阶](tutorial/05-agent-advanced.md)  
   了解图形界面 Agent、编辑器型 Agent、命令行型 Agent 的差别，以及 API Key 和命令权限怎么处理。

## 你会用到的配套文件

- [PPT Master Starter](kits/ppt-master-starter/README.md)：第 1 课的练习工作区。
- [下载清单](kits/ppt-master-starter/DOWNLOADS.md)：GitHub 打不开时，看这里。
- [排错说明](kits/ppt-master-starter/troubleshooting.md)：Python、Node.js、npx、Trae、输出文件这些问题，看这里。
- [Skill Hub 总表](catalog/INDEX.md)：按大类和小类看当前推荐位。
- [Skill 目录](catalog/README.md)：单个开源 Skill 的档案。
- [场景合集](collections/README.md)：按任务找 Skill，并比较同一小类里的推荐位。
- [Skill 评审流程](docs/review-process.md)：候选、观察中、推荐和不推荐怎么判断。
- [第三方 Skill 处理原则](docs/third-party-policy.md)：备用下载、许可证和镜像边界看这里。

## 这个项目不是什么

它不是“AI 工具大全”，也不是 GitHub 链接合集。

我更想把它做成一个有人筛过、有人试过、能告诉你怎么开始的 Skill Hub：先按场景找，再看每个小类里最省心和更进阶的选择。对普通人来说，最好能跟着教程或 starter 直接跑起来；对会折腾的人来说，也能顺着原项目继续改。

## 当前进度

第一课已经能跑：PPT Master Starter 已经准备好，也补了 Trae、GitHub 打不开时的备用下载、中文命令审核这些普通人最容易卡住的地方。

后面会继续补：

- 更多写作与办公 Skill，并按小类补齐“最省心 / 进阶 / 可改造”推荐位。
- 用 Trae 安装已知 Skill、按需求寻找 Skill 的教程。
- 我们自己维护的 Skill 库使用教程。
- 普通人自制 Skill 的练习模板。
- Agent 使用进阶：自定义 API、命令确认、不同 Agent 的选择。
- 下载、版权、隐私、费用和 API 的基础说明。

## 仓库里这些目录是干什么的

```text
ai-skills-for-everyone/
├── README.md
├── tutorial/                 # 教程正文，普通用户先看这里
├── kits/                     # 配套练习工作区
│   └── ppt-master-starter/
├── catalog/                  # Skill Hub 总表和单个 Skill 档案
├── collections/              # 按任务场景、小类和推荐位整理 Skill
├── appendix/                 # 附录：下载、排错、版权、安全
├── docs/                     # 项目维护和收录规则
├── skills/                   # 必要时存放许可证允许的 Skill 镜像或改造版
├── sources/                  # 候选来源
├── templates/                # 模板
├── reviews/                  # 试用记录
└── examples/
```
