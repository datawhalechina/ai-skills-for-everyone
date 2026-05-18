# 下载清单

如果你打不开 GitHub，也没有 PPT Master 压缩包，先看这一页。

最省事的顺序：

1. 先试 GitHub 官方链接。
2. 如果 GitHub 打不开，试 AtomGit 官方镜像。
3. 如果 AtomGit 也不行，再试下面的百度网盘备用链接。
4. 如果网盘也不行，再把这一页发给能正常访问 GitHub 或 AtomGit 的朋友、同事或同学，请他帮你下载 ZIP。
5. 下载后一定要先解压。不要直接把 `.zip` 压缩包路径发给 Trae。

## 需要下载什么

优先下载这个固定版本：

```text
https://github.com/hugohe3/ppt-master/archive/refs/tags/v2.7.0.zip
```

如果这个链接打不开，就打开项目主页：

```text
https://github.com/hugohe3/ppt-master
```

然后点绿色的 `Code`，再点 `Download ZIP`。

也可以直接下载最新代码包：

```text
https://github.com/hugohe3/ppt-master/archive/refs/heads/main.zip
```

## 官方镜像：AtomGit

PPT Master 官方 README 里也列了 AtomGit 镜像。GitHub 打不开时，可以优先试这个：

```text
https://atomgit.com/hugohe3/ppt-master
```

打开后点 `克隆/下载`，再点 `下载ZIP`。

如果你会用 Git，也可以让 Trae Agent 执行：

```text
git clone https://atomgit.com/hugohe3/ppt-master.git
```

注意：AtomGit 是官方 README 列出的镜像，但项目主仓库仍然是 GitHub。能打开 GitHub 时，优先用 GitHub；GitHub 打不开时，再用 AtomGit。

## 备用镜像：百度网盘

如果 GitHub 和 AtomGit 都打不开，可以再用这个备用链接。

```text
百度网盘链接：https://pan.baidu.com/s/5kBWJzcCWbbSdSmxG4lv8gg 
提取码：无
镜像内容：PPT Master v2.7.0 原始 ZIP
上传日期：2026-05-15
原项目地址：https://github.com/hugohe3/ppt-master
许可证：MIT
说明：这是非官方备用镜像。能打开 GitHub 时，优先使用上面的官方链接。
```

上传网盘时建议只放原始 ZIP，不要把 Python 环境、Node 依赖、模型文件、字体或其他素材一起打包进去。

如果百度网盘仍然提示需要提取码，可能是链接状态变了，请先联系维护者检查。

## 下载后怎么处理

下载后，你通常会拿到一个 `.zip` 文件。请先右键解压。

建议解压到和 `ppt-master-starter` 同一个大文件夹里，例如：

```text
Documents\ai-skills\
├── ppt-master-starter\
└── ppt-master\
```

如果解压后文件夹名字是 `ppt-master-2.7.0` 或 `ppt-master-main`，也没关系，可以先不改名。

解压完成后，打开这个文件夹看一眼。里面应该能看到类似这些东西：

```text
README.md
requirements.txt
skills/
```

如果你看到的是一个同名文件夹套在里面，比如 `ppt-master-2.7.0/ppt-master-2.7.0/README.md`，就进入最里面那个真正有 `README.md` 和 `requirements.txt` 的文件夹。

解压好以后，把这个文件夹路径告诉 Trae Agent，例如：

```text
PPT Master 已经解压到：
C:\Users\你的用户名\Documents\ai-skills\ppt-master-2.7.0

请从这个本地文件夹接入 PPT Master，不要再从 GitHub 下载。
```

如果你不确定路径对不对，把这段发给 Trae Agent：

```text
我已经下载并解压了 PPT Master，但不确定应该给你哪个文件夹路径。
请帮我检查这个目录下面哪个文件夹里有 README.md、requirements.txt 和 skills/，然后从那个文件夹接入 PPT Master。不要联网下载。
```

## 不建议做什么

- 不要从来路不明的网站下载别人改过的压缩包。
- 不要把 ZIP 解压到系统目录、微信目录、QQ 目录或网盘同步目录。
- 不要让 Trae 在 GitHub 打不开时反复重试很久。
- 不要直接把 `.zip` 文件当成已安装完成。必须先解压。
