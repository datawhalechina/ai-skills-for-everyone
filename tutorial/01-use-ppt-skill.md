# 第 1 课：用开源 PPT Skill 生成可编辑 PPT

这一课只做一件事：让你跑通一次 PPT Skill。

跑通的标准很简单：你能用示例材料生成一个可编辑的 `.pptx` 文件，并且知道以后换成自己的材料该怎么做。

## 这节课最后会得到什么

你会得到：

- 一个能被 Trae 打开的本地工作区。
- 一个放材料的 `inputs/` 文件夹。
- 一段可以直接复制给 Trae Agent 的提示词。
- 一份用示例材料生成的测试 PPT。
- 一套以后重复使用的固定步骤。

你不用先学会 GitHub，也不用一开始就看懂英文命令。看不懂的命令，先让 Trae 用中文解释，再决定要不要执行。

## 你需要准备什么

先准备三样东西：

- 一台 Windows 或 macOS 电脑。
- Trae：官网是 https://www.trae.cn/
- 这个教程里的 `ppt-master-starter` 文件夹。

如果你打不开 GitHub，也没关系。第 3 步会走备用下载路线。

## 第 1 步：安装 Trae

打开 Trae 官网：

https://www.trae.cn/

下载桌面端，按提示安装。装好以后先登录。

如果你的 Trae 版本支持自定义 API，可以先把自己的模型 API 配好。不会配也没关系，先能打开本地文件夹就行。

安装好以后，你要确认一件事：Trae 能打开一个本地文件夹。

在 Trae 里选择 `Open Folder`，等会儿我们要打开的是：

```text
kits/ppt-master-starter
```

## 第 2 步：打开 PPT Starter 工作区

进入这个教程仓库，找到：

```text
kits/ppt-master-starter
```

用 Trae 打开整个 `ppt-master-starter` 文件夹，不要只打开里面某一个文件。

打开后，你应该能看到这些东西：

```text
ppt-master-starter/
├── START_HERE.md
├── DOWNLOADS.md
├── troubleshooting.md
├── inputs/
├── outputs/
├── prompts/
├── samples/
└── scripts/
```

如果你看不到 `inputs/` 和 `prompts/`，说明打开错文件夹了。退回上一层，重新打开整个 `ppt-master-starter`。

## 第 3 步：让 Trae 帮你配置环境

打开：

```text
prompts/bootstrap-env.txt
```

把里面的内容复制给 Trae Agent。

这段提示词会让 Trae 做几件事：

- 先问你 GitHub 能不能打开。
- 检查 Python 3.10+、Node.js、npx。
- 安装或接入 PPT Master。
- 用示例材料跑一次测试。
- 每次执行命令前，先用中文说明它要做什么。

这里最重要的是网络问题。

如果 Trae 问你：

```text
你现在能不能正常打开 GitHub？
```

你按真实情况回答：

```text
1. 有，GitHub 能正常打开
2. 没有，GitHub 经常打不开
3. 不确定，我不知道 GitHub 是什么
```

如果你选第 2 或第 3 个，Trae 不应该直接让你跑 `git clone`。它应该改走 ZIP 或本地文件夹路线。

备用下载地址在：

```text
DOWNLOADS.md
```

里面有官方 GitHub 地址，也有百度网盘备用镜像。下载后一定要先解压，不要把 `.zip` 压缩包路径直接给 Trae。

## 第 4 步：看懂 Trae 的命令确认

Trae 配环境时，可能弹出英文命令，比如：

```text
powershell -ExecutionPolicy Bypass -File "...\scripts\check-env.ps1"
```

普通用户不用硬看英文。先打开：

```text
prompts/command-review.txt
```

把里面的内容复制给 Trae Agent，再把弹窗里的英文命令粘进去。

Trae 应该用中文告诉你：

- 这条命令要做什么。
- 会不会联网。
- 会读写哪些文件夹。
- 有没有明显风险。
- 你应该点确认，还是先暂停。

看懂以后再点确认。

## 第 5 步：先用示例材料跑一次

第一次不要拿正式材料试。

先用这个示例：

```text
inputs/realistic-ppt-brief.md
```

它是一份接近真实工作的 PPT 需求：客服工单自动分流试点复盘汇报。

让 Trae 用 PPT Master 跑一次测试。目标不用大，先生成 3 到 5 页就够。

成功以后，Trae 应该告诉你 `.pptx` 文件保存在哪里。通常会在 `outputs/` 或 Trae 创建的项目输出目录里。

## 第 6 步：检查测试结果

打开生成的 PPT，检查这几件事：

- 能不能用 PowerPoint 或 WPS 打开。
- 每页文字、形状、图表能不能单独编辑。
- 标题是不是能看懂。
- 有没有明显编造数据。
- 有没有输出成一堆图片，而不是可编辑 PPT。

只要能打开、能编辑、内容大体对，这一课就算跑通了。

别追求第一次就很好看。第一轮目标是“能跑通”，不是“能直接交给老板”。

## 第 7 步：换成自己的材料

以后你只需要重复这三步：

1. 把材料放进 `inputs/`。
2. 打开 `prompts/normal-use.txt`，复制给 Trae Agent。
3. 等 Trae 生成 PPT，再去输出目录找 `.pptx`。

如果你要做正式 PPT，建议先告诉 Trae：

- 这份 PPT 给谁看。
- 需要几页。
- 风格是什么。
- 哪些内容最重要。
- 有没有不能乱编的数据。

## 你可以直接复制这段

```text
请使用 PPT Master，把 inputs/ 里的材料做成一份可编辑 PPT。

要求：
- 先做 5 页以内的小样。
- 输出 .pptx，不要只导出图片。
- 不要编造材料里没有的数据、结论或引用。
- 不确定的信息请标出来。
- 生成前先告诉我你准备采用的页面结构和风格，我确认后再继续。
```

确认结构后，再发：

```text
我确认这个页面结构和风格。请继续生成 PPT，并告诉我 .pptx 文件保存在哪里。
```

## 卡住了怎么办

先看这两个文件：

- [下载清单](../kits/ppt-master-starter/DOWNLOADS.md)
- [排错说明](../kits/ppt-master-starter/troubleshooting.md)

最常见的卡点是：

- GitHub 打不开。
- 没装 Python。
- 没装 Node.js 或 npx。
- Trae 打开的不是整个文件夹。
- 命令是英文，看不懂不敢点。
- 输出文件不知道在哪。

这些问题在 starter 里都写了对应处理方式。

## 本课小结

到这里，你应该已经知道怎么用一个 starter 工作区跑通 PPT Skill：

1. 用 Trae 打开 `ppt-master-starter` 文件夹。
2. 先用 `prompts/bootstrap-env.txt` 配置和测试环境。
3. 看不懂命令时，用 `prompts/command-review.txt` 让 Trae 先解释。
4. 先跑 `inputs/realistic-ppt-brief.md` 这个样例。
5. 样例成功后，再把自己的材料放进 `inputs/`。
6. 日常使用时，复制 `prompts/normal-use.txt`。
7. 最后去输出目录找 `.pptx`，并人工检查内容。

如果这 7 步你能走通，第 1 课就完成了。

## 本课练习

不要马上拿最重要的材料测试。先做一个小练习：

1. 在 `inputs/` 里放一份不敏感的材料，可以是一页 Markdown、一段公开文章摘要，或者你自己写的 300 字说明。
2. 打开 `prompts/normal-use.txt`，把提示词复制给 Trae Agent。
3. 要求它先生成 3 到 5 页的小样。
4. 生成后打开 `.pptx`，检查文字和形状能不能编辑。
5. 如果效果不好，只改一处要求再重跑，比如页数、目标读者或风格。

练习目标不是做出完美 PPT，而是确认你已经会用这套固定流程。下一课会讲：如果你已经知道一个 Skill 地址，怎么让 Trae 帮你安装；如果你只有需求，又该怎么去找 Skill。
