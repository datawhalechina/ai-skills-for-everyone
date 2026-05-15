# 第 3 课：使用我们维护的 Skill 库

前两课讲的是怎么跑通一个 Skill、怎么让 Trae 安装或寻找 Skill。  
这一课讲这个仓库本身：我们维护的 Skill 库应该怎么用。

这里的“Skill 库”不是把别人的代码全部搬过来。更准确地说，它是一个中文索引和使用路线库：我们记录来源、场景、安装难度、适合谁、怎么试、有什么风险。遇到适合普通人的大 Skill，再补 starter 工作区。

## 这节课要学会什么

学完以后，你应该知道：

- 想按任务找 Skill，先看哪里。
- 想看某个 Skill 的详细档案，去哪里。
- 想直接上手，怎么判断有没有 starter。
- 一个 Skill 适不适合普通人，怎么看。
- 看到一个条目以后，下一步该复制什么、打开什么、问 Trae 什么。

## 第 1 步：先从场景入口找

普通人不要先翻项目名。先问自己：我要完成什么任务？

然后去：

[场景合集](../collections/README.md)

当前先按这些方向整理：

- [写作与办公](../collections/writing-and-office.md)
- [学习与研究](../collections/learning-and-research.md)
- [内容创作](../collections/content-creation.md)
- [开发与调试](../collections/coding-and-devtools.md)
- [自动化流程](../collections/automation-workflows.md)

比如你想做 PPT，就先看“写作与办公”。  
你想做论文阅读，就先看“学习与研究”。  
你想处理重复文件，就先看“自动化流程”。

## 第 2 步：看这个 Skill 有没有三样东西

一个条目如果比较成熟，最好有三样东西：

1. Skill 卡片  
   记录它从哪里来、许可证是什么、适合什么任务、难不难用。

2. 教程  
   讲普通人怎么一步步用起来。

3. Starter 工作区  
   把输入目录、提示词、样例、输出目录和排错说明都准备好。

比如 PPT Master 现在已经有：

- [Skill 卡片](../catalog/writing-and-office/ppt-master.md)
- [第 1 课教程](01-use-ppt-skill.md)
- [PPT Master Starter](../kits/ppt-master-starter/START_HERE.md)

如果一个 Skill 只有卡片，没有教程或 starter，也不是不能用，只是你需要让 Trae 先帮你判断安装路线。

## 第 3 步：读 Skill 卡片时看这几项

打开一个 Skill 卡片，不用从头研究源码。先看这些：

- 它解决什么任务。
- 适合谁，不适合谁。
- 使用门槛是低、中还是高。
- 是否需要 Python、Node.js、npx、Docker。
- GitHub 打不开时有没有备用路线。
- 有没有隐私、版权、许可证风险。
- 有没有现成 starter。

如果这些信息都不清楚，先别急着安装。把链接丢给 Trae，让它按第 2 课的方法做一次判断。

可以复制这段：

```text
我在 Skill 库里看到这个条目：
[粘贴 Skill 卡片链接或项目链接]

我的目标是：
[写你的任务]

请先不要执行命令。请帮我判断：
1. 这个 Skill 是否适合我的任务？
2. 我这台电脑需要准备什么环境？
3. 普通用户最容易卡在哪里？
4. 有没有 starter 或更简单的使用路线？
5. 如果 GitHub 打不开，应该怎么处理？
6. 你建议我现在直接试，还是先找替代方案？
```

## 第 4 步：优先选有 starter 的 Skill

普通人第一次用，优先选有 starter 的。

starter 的好处是它已经替你规定好了：

- 材料放哪里。
- 提示词复制哪段。
- 测试样例用哪个。
- 输出文件去哪找。
- 常见问题怎么处理。

没有 starter 的 Skill 也可以用，但更像自己摸路。你可以让 Trae 帮你临时搭一个小 starter，跑通后再保存下来。

## 第 5 步：不要把 Skill 库当成排行榜

我们会参考 star 数，但这个库不是星标榜。

一个 Skill 是否值得推荐，更看重这些：

- 能不能解决真实任务。
- 普通人有没有办法用起来。
- 来源和许可证是否清楚。
- 文档和示例是否够用。
- 能不能做成稳定的使用流程。

很多高星项目很好，但只适合开发者。也有一些星标没那么夸张的项目，因为场景很明确、文档很清楚，反而更适合普通人。

## 本课练习

从 [写作与办公](../collections/writing-and-office.md) 里打开 PPT Master 条目。

按这个顺序看一遍：

1. 先看场景合集里怎么介绍它。
2. 再看 [Skill 卡片](../catalog/writing-and-office/ppt-master.md)。
3. 最后打开 [PPT Master Starter](../kits/ppt-master-starter/START_HERE.md)。

看完以后问自己：

- 我是想直接用，还是想了解这个项目？
- 它有没有 starter？
- 我需要准备什么输入？
- 我遇到 GitHub 打不开时该看哪个文件？
- 这个 Skill 能不能复用到我的真实工作里？

这就是使用 Skill 库的基本方法：先按场景找，再看卡片，最后进 starter。
