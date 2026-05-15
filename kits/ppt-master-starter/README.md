# PPT Master Starter

这是给普通用户准备的 PPT Master 开箱工作区。

先读：

- [START_HERE.md](START_HERE.md)

普通用户默认用 Trae 打开整个 `ppt-master-starter` 文件夹。

目录说明：

- `inputs/`：放你的 PDF、DOCX、Markdown 或文字材料。
- `outputs/`：后续用于放导出的 PPT。
- `prompts/`：可直接复制给 Trae Agent 的提示词。
- `samples/`：第一次测试用的小材料。
- `scripts/`：只检查环境的脚本。
- `DOWNLOADS.md`：打不开 GitHub 时，发给别人帮忙下载的清单。
- `troubleshooting.md`：常见问题。

推荐顺序：

1. 先复制 `prompts/bootstrap-env.txt`，让 Trae Agent 或懂技术的人配置环境。
2. 如果 Trae 弹出英文命令，看不懂时复制 `prompts/command-review.txt`，让它先用中文解释。
3. 如果你打不开 GitHub，先看 `DOWNLOADS.md`，让别人帮你下载 PPT Master ZIP。
4. 环境配置好后，再复制 `prompts/normal-use.txt` 生成 PPT。

原项目：

- https://github.com/hugohe3/ppt-master
