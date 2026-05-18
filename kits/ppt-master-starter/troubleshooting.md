# 常见问题

## 我运行不了检查脚本

可以把下面这段发给 Trae Agent 或懂技术的人：

```text
请在 kits/ppt-master-starter/ 目录里运行环境检查脚本。

Windows:
scripts/check-env.ps1

macOS / Linux:
sh scripts/check-env.sh

请只检查环境，不要随便安装或删除东西。
```

更推荐的做法是先复制：

```text
prompts/bootstrap-env.txt
```

让 Trae Agent 先检查，再列出安装命令，等你确认后再执行。

## Trae 显示英文命令，我看不懂

命令本身不能改成中文。`powershell`、`python`、`npx` 这些名字是电脑要识别的指令。

但你可以要求 Trae 在执行前先写中文解释。最省事的做法是复制：

```text
prompts/command-review.txt
```

把弹窗里的英文命令粘到里面，再发给 Trae Agent。

也可以直接把这段发给 Trae Agent：

```text
请用中文解释你准备运行的每条命令：
1. 这条命令是做什么的？
2. 会不会联网下载东西？
3. 会修改哪个目录？
4. 有没有风险？

解释完以后，等我确认再执行。
```

如果它解释不清楚，先不要执行。

也可以直接把 Trae 弹窗里的英文命令粘进去：

```text
请用中文解释这个命令，然后告诉我能不能点确认：

[把 Trae 弹出的英文命令粘贴到这里]

请说明：
1. 它要做什么？
2. 会不会联网？
3. 会不会安装东西？
4. 会不会删除或移动文件？
5. 会修改哪个目录？
6. 这条命令在当前任务里是否合理？
```

## 提示 Python 不存在

PPT Master 需要 Python 3.10 或更高版本。请先安装 Python，再重新检查。

Windows 安装 Python 时，要勾选 `Add python.exe to PATH`。如果没勾选，检查脚本可能找不到 Python。

如果你不懂 Python，把这个问题交给懂技术的人处理就好。你只需要确认最后检查结果显示 Python 可用。

## 提示 Node 或 npx 不存在

项目提供的 Skill 安装方式会用到 `npx`。如果电脑没有 Node.js 或 `npx`，需要先安装 Node.js。

建议安装 Node.js LTS 版本。安装后重新打开 Trae，再运行检查脚本。

## GitHub 打不开，下载很慢

先不要反复重试，也不要急着确认 `git clone` 或 `npx skills add`。先让 Trae Agent 问清楚网络情况。

可以复制这段给 Trae Agent：

```text
我不确定这台电脑能不能正常打开 GitHub。

请先问我：
1. GitHub 能不能正常打开？
2. 我有没有已经下载好的 PPT Master 文件夹？

如果我不能访问 GitHub，请不要执行 git clone，也不要默认用 npx skills add。
请改成 ZIP 或本地文件夹路线。先让我打开 DOWNLOADS.md。
如果 DOWNLOADS.md 里有 AtomGit 官方镜像，请优先提醒我用 AtomGit 下载 ZIP。
如果 AtomGit 也打不开，再提醒我用百度网盘备用链接。
下载后请提醒我必须先解压，不要直接把 .zip 文件路径给你。
如果我看不到这个文件，请把 PPT Master 的 GitHub 或 AtomGit 地址发给我，让别人帮我下载 ZIP，解压后再把路径告诉你。
不要让我回复“可以执行 #3 #2 #4”这种技术编号。请把每一步写成普通话。
```

官方下载地址也可以直接用这个：

```text
https://github.com/hugohe3/ppt-master/archive/refs/tags/v2.7.0.zip
```

GitHub 打不开时，也可以试 AtomGit 官方镜像：

```text
https://atomgit.com/hugohe3/ppt-master
```

如果已经卡住了，再判断到底卡在哪一层：

- Trae 登录或模型服务：这类问题本地解决不了，只能换网络、换时间，或找能正常使用 Trae 的环境。
- GitHub / AtomGit 下载：让能打开的人下载 PPT Master ZIP，拷贝到你的工作区。
- Python 或 Node.js 安装包下载：让有网络的人下载离线安装包，或者使用可信镜像。
- pip 或 npm 依赖下载：让 Trae Agent 尝试国内镜像。

可以复制这段给 Trae Agent：

```text
我这台电脑可能打不开 GitHub，下载可能很慢。
请先判断卡在哪一步，不要反复重试。

如果是 pip 或 npm 依赖下载，请优先尝试国内镜像。
如果是 GitHub 或 AtomGit 下载，请告诉我需要别人帮忙下载哪个 ZIP。
如果是 Trae 登录或模型服务，请直接告诉我这是网络问题。
```

## Trae 看不到 inputs 或 prompts

你可能只打开了某个文件，而不是整个文件夹。

在 Trae 里选择 `Open Folder`，打开：

```text
ppt-master-starter/
```

左侧文件列表里应该能看到：

- `inputs/`
- `outputs/`
- `prompts/`
- `samples/`
- `scripts/`

## Agent 找不到我的文件

先确认文件真的放在：

```text
inputs/
```

然后在提示词里写完整一点，比如：

```text
材料位置：kits/ppt-master-starter/inputs/report.pdf
```

在 Trae 里，确认你打开的是整个 `ppt-master-starter` 文件夹，不是只打开了某一个文件。

## 找不到生成的 PPT

让 Trae Agent 明确告诉你路径：

```text
请告诉我最终 .pptx 文件的完整路径，并确认这个文件是否存在。
```

## 生成内容看起来很空

常见原因是材料太少，或者你的要求太泛。

补充这几项通常会好很多：

- 目标读者是谁。
- 你希望强调什么。
- 需要多少页。
- 风格是什么。
- 哪些内容必须出现。

## 能不能直接用公司机密材料

不建议。内容会进入你使用的模型和 Agent 上下文。公司机密、客户隐私、合同、财务数据和未公开方案都要谨慎。
