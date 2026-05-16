# 开箱即用 Skill Kit

只写上手指南还不够。普通人真正想要的是一个已经收拾好的工作台：

> 我把材料放进去，按一个入口提示操作，最后拿到结果。

所以这个项目需要在 `catalog/` 和 `tutorial/` 之外，再定义一种交付物：**Skill Kit**。

## Skill Kit 是什么

Skill Kit 是给普通人使用开源大 Skill 的包装层。它不替代原项目，也不隐藏来源，而是把安装、检查、示例、提示词和输出目录都预先整理好。

一个好的 Skill Kit 应该让用户少做这些事：

- 少读 GitHub README。
- 少自己判断装什么依赖。
- 少碰命令行。
- 少猜文件放哪里。
- 少猜提示词怎么写。
- 少在报错时不知道问谁。
- 少被 GitHub、npm、PyPI 等网络问题卡住。
- 少在看不懂英文命令时盲点确认。

## 三层关系

- `catalog/`：记录原始项目档案。
- `tutorial/`：解释普通人怎么用。
- `kits/`：提供尽量开箱即用的工作区或封装方案。

简单说：`catalog` 可信，`tutorial` 可读，`kits` 可用。

## 开箱程度分级

| 级别 | 形态 | 普通人体验 | 成本 |
| --- | --- | --- | --- |
| L1 预置工作区 | 一个整理好的文件夹或 ZIP | 下载、放材料、复制提示词 | 低 |
| L2 一键安装脚本 | Windows / macOS 安装和检查脚本 | 双击或运行一次脚本 | 中 |
| L3 本地小应用 | 拖文件、填表单、点生成 | 接近普通软件 | 中高 |
| L4 托管网页服务 | 打开网页直接用 | 最简单 | 有服务器、隐私和费用压力 |

这个项目的优先级应该是：先做 L1 和 L2。它们足够朴素，但能明显降低门槛。

## 一个 Skill Kit 应该包含什么

```text
kits/<skill-name>-starter/
├── README.md
├── START_HERE.md
├── inputs/
│   └── put-your-files-here.md
├── outputs/
│   └── .gitkeep
├── prompts/
│   ├── first-run.txt
│   └── normal-use.txt
├── scripts/
│   ├── check-env.ps1
│   ├── check-env.sh
│   ├── install.ps1
│   └── install.sh
├── samples/
│   └── sample-source.md
└── troubleshooting.md
```

每个 Kit 还应该写一条“GitHub 打不开时怎么办”：哪些东西可以走镜像，哪些东西需要别人提前下载，哪些问题只能换网络。

## PPT Master 的最低可用 Kit

PPT Master 的第一版 Kit 不需要做成完整应用。先做一个预置工作区就够了。

目标体验：

1. 用户下载 `ppt-master-starter` 文件夹。
2. 打开 `START_HERE.md`。
3. 把 PDF、DOCX 或 Markdown 放进 `inputs/`。
4. 运行一次环境检查。
5. 把 `prompts/normal-use.txt` 复制给 Agent。
6. 去 `outputs/` 或 PPT Master 的导出目录找 `.pptx`。

第一版可以先不做 GUI。GUI 很诱人，但会把问题从“Skill 怎么用”变成“我们维护一个软件”。先用文件夹和脚本把路跑通。

## 对普通人隐藏什么

不要让普通人一上来处理这些细节：

- 原项目目录结构。
- 复杂 workflow 名字。
- Python 包版本。
- Agent 插件细节。
- 长篇架构说明。

这些东西可以放在 `README.md` 或 `troubleshooting.md`，但 `START_HERE.md` 只放最短路径。

## 对普通人保留什么

有些事不能隐藏：

- 会不会用到模型费用。
- 材料会不会进入模型上下文。
- 哪些文件不要放进去。
- 每条安装命令会做什么。
- 英文命令审核时，用户应该怎么让 Agent 翻译成中文。
- 输出结果必须人工检查。
- 原项目许可证和来源。

开箱即用不是“假装没有风险”，而是把风险放在用户看得见的地方。

## 我们接下来怎么做

以 PPT Master 为样板，先做一个 L1/L2 版本：

1. 建 `kits/ppt-master-starter/`。
2. 写 `START_HERE.md`。
3. 放一份 `prompts/normal-use.txt`。
4. 放一份不涉及版权和隐私的 `samples/sample-source.md`。
5. 写 Windows 和 macOS/Linux 的环境检查脚本。
6. 写 GitHub 打不开时的备用说明：可用的软件源、离线安装包、别人帮忙下载 ZIP。
7. 先不自动安装一切，先检查 Python、Node、Agent 工作区和依赖是否齐。

如果这个工作区能让一个非技术用户在别人帮忙装好一次后反复使用，第一阶段就算成功。
