# 第 6 课：用 Skills Manager 管理多个 Skill

前面几课讲的是怎么找到、安装、试用一个 Skill。  
这一课讲另一个问题：当你已经有很多 Skill，怎么不靠记忆和手动复制来管理它们。

这里会用到一个开源工具：[Skills Manager](https://github.com/xingkongliang/skills-manager)。它不是一个 Skill，而是一个 Skill 管理器：把不同来源的 Skill 放进一个中央库，再同步到 Claude Code、Codex、Cursor、Trae 等 Agent 工具的 Skill 目录里。

先说清楚：**这不是新手第一步。**

如果你还没有跑通过任何 Skill，先回到 [第 1 课](01-use-ppt-skill.md) 或 [第 2 课](02-find-and-install-skills.md)。管理器解决的是“东西多了以后怎么整理”，不是“第一次怎么理解 Skill”。

## 什么时候才需要它

满足下面任意一种情况，再考虑这一课：

- 你已经装了 5 个以上 Skill。
- 你同时使用多个 Agent，比如 Trae、Codex、Cursor、Claude Code。
- 你想给不同任务准备不同组合，比如写作、论文、PPT、前端开发。
- 你想给自己的 Skill 库做备份和迁移。
- 你已经能看懂“复制到哪个目录”“同步到哪个工具”这类说明。

如果你只有 1 到 3 个 Skill，继续手动管理就够了。  
此时加一个管理器，反而可能让你多学一层概念。

## 它主要解决什么

Skills Manager 可以帮你做这些事：

| 能力 | 普通说法 |
| --- | --- |
| Unified skill library | 把不同来源的 Skill 收到一个中央库里。 |
| Global Workspace | 管理某个 Agent 的全局 Skill 目录。 |
| Project Workspace | 管理某个项目自己的本地 Skill 目录。 |
| Presets | 把一组 Skill 保存成一个组合，一次启用。 |
| Multi-tool sync | 把同一批 Skill 同步到多个 Agent 工具。 |
| Tags and filters | 给 Skill 打标签，方便筛选。 |
| Git backup | 用 Git 备份 Skill 库，方便换电脑或回滚。 |
| CLI | 在命令行或服务器上管理 Skill。 |

把它理解成“Skill 的资料柜和同步器”就行。  
它不会替你判断一个 Skill 靠不靠谱，也不会替你写中文教程。这个判断仍然要靠人和 Agent 一起做。

## 先别急着导入真实 Skill

第一次试用只做 smoke test。目标不是把你的真实 Skill 库全部搬进去，而是确认这台电脑上它能不能正常工作。

第一轮只测三件事：

1. 能不能安装并打开。
2. 能不能导入一个假的本地 Skill。
3. 能不能用 Copy 模式同步到一个目标 Agent 目录。

先不要测试这些：

- 批量导入已有 Skill。
- 启用 Git backup。
- 同时同步到所有 Agent。
- 使用 symlink 模式。
- 导入公司或个人真实工作资料。

第一轮越小，出问题越容易定位。

## 第 1 步：准备一个临时目录

先建一个专门试用的目录，不要动真实资料库。

Windows 可以用：

```text
D:\skills-manager-smoke\
```

macOS 或 Linux 可以用：

```text
~/skills-manager-smoke/
```

后面所有测试文件都放在这里。试完不想要了，也容易清理。

## 第 2 步：下载和安装

打开项目 release 页面：

```text
https://github.com/xingkongliang/skills-manager/releases
```

下载适合你系统的安装包。  
截至 2026-05-22，项目最新 release 是 `v1.21.0`，但你实际操作时以 release 页面显示为准。

安装后先打开 Settings，确认两件事：

1. 中央库目录在哪里。
2. 同步模式是什么。

建议第一轮把中央库改到临时目录里，比如：

```text
D:\skills-manager-smoke\.skills-manager
```

同步模式先选 **Copy**。  
不要一上来选 symlink。symlink 对不同 Agent、不同系统、不同权限环境的表现可能不一致，新手排查起来很痛苦。

## 第 3 步：做一个假的测试 Skill

在临时目录里新建：

```text
D:\skills-manager-smoke\hello-skill\SKILL.md
```

macOS 或 Linux 可以对应成：

```text
~/skills-manager-smoke/hello-skill/SKILL.md
```

`SKILL.md` 内容写成这样：

```markdown
---
name: hello-skill
description: A tiny test skill for checking Skills Manager import and sync.
---

When the user asks to test the skill manager, reply with:
"hello-skill is available."
```

这个 Skill 没有任何真实资料，也不会执行命令。它只用来确认导入和同步链路。

## 第 4 步：导入本地 Skill

在 Skills Manager 里选择从本地文件夹导入，把 `hello-skill` 导入中央库。

导入后检查：

- Library 里能不能看到 `hello-skill`。
- 能不能预览 `SKILL.md`。
- 来源是否显示为本地目录。
- 没有出现奇怪的报错。

如果这一步都失败，先不要继续同步。  
先看错误信息，或者导出日志，再决定要不要报告给原项目。

## 第 5 步：建一个测试 preset

新建一个 preset，名字可以叫：

```text
Smoke Test
```

里面只放 `hello-skill`。

preset 的意义是把一组 Skill 保存成一个组合。以后你可以有：

- `Writing`
- `Research`
- `PPT`
- `Frontend`
- `Daily Work`

但第一轮只放一个测试 Skill，保持简单。

## 第 6 步：只同步到一个目标 Agent

打开 Global Workspace，先选一个你最熟悉的 Agent。  
比如你平时用 Trae，就先测 Trae；你平时用 Codex，就先测 Codex。

同步前先确认目标目录。不要猜。  
不同工具、不同版本的 Skill 目录可能会变化，以工具当前设置或 Skills Manager 识别出的路径为准。

同步后，用文件管理器或命令行确认目标目录里真的出现了 `hello-skill`。

Windows 可以让 Agent 或 PowerShell 帮你检查：

```powershell
Get-ChildItem "目标 Skill 目录" -Force
```

macOS 或 Linux 可以用：

```bash
ls -la "目标 Skill 目录"
```

如果目标目录里没有文件，先不要继续点更多按钮。  
回到 Settings 检查同步模式、目标 Agent 路径和日志。

## 第 7 步：让 Agent 验证是否识别

打开对应 Agent，问一句：

```text
请测试 hello-skill 是否可用。
```

如果 Agent 能按 `SKILL.md` 的说明回答：

```text
hello-skill is available.
```

说明这条链路基本跑通了。

如果文件已经同步，但 Agent 识别不到，不一定是 Skills Manager 的问题。可能是：

- Agent 需要重启。
- Skill 目录路径不对。
- Agent 当前版本的 Skill 发现规则不同。
- 这个 Agent 不支持这种目录结构。
- symlink 或嵌套目录没有被正确识别。

这也是为什么第一轮建议用 Copy 模式和单个假 Skill。

## 服务器上能不能用

能，但不建议作为普通读者的第一条路线。

Skills Manager 有 CLI，README 里提供了这些方向：

```bash
npm run cli -- repo status
npm run cli -- skills list
npm run cli -- skills install ./my-skill
npm run cli -- skills sync --dry-run
npm run cli -- skills export db --dest ~/.claude/skills/db
```

也可以把二进制安装到 PATH：

```bash
npm run cli:install
```

但这条路通常需要：

- Node.js。
- Rust toolchain。
- 能从 GitHub 拉源码。
- 能处理服务器上的目录权限。
- 能看懂 CLI 输出和日志。

所以无图形界面的服务器可以试 CLI，但教程里不要把它写成默认方案。  
服务器上更稳的入门方式仍然是：先用 Git 管一个自己的 Skill 目录，再把需要的 Skill 复制到目标 Agent 目录。

## 怎么记录试用结果

试完后，别只写“感觉还行”。最小记录写这些：

```text
工具名称：Skills Manager
原始链接：https://github.com/xingkongliang/skills-manager
测试日期：
系统：
安装版本：
中央库目录：
同步模式：Copy / Symlink
测试 Skill：hello-skill
目标 Agent：
目标 Skill 目录：
是否成功导入：
是否成功同步：
Agent 是否识别：
遇到的问题：
当前结论：观察中 / 可参考 / 推荐
```

这份记录以后可以变成 Skill 卡片、评测记录或教程补充。

## 适合写进教程的边界

我们可以把 Skills Manager 写进教程，但要把边界写清楚：

- 它适合“已经有多个 Skill”的人。
- 它不适合完全小白作为第一步。
- 第一次只用假 Skill 做测试。
- 默认推荐 Copy 模式。
- symlink、Git backup、批量导入放到进阶部分。
- 服务器 CLI 作为补充，不作为主线。

这样写，读者会把它当成管理工具，而不是误以为“不会用它就不会用 Skill”。

## 本课练习

完成一个最小 smoke test：

1. 安装 Skills Manager。
2. 把中央库放进临时目录。
3. 创建 `hello-skill`。
4. 导入 Library。
5. 建立 `Smoke Test` preset。
6. 用 Copy 模式同步到一个 Agent。
7. 让 Agent 验证 `hello-skill` 是否可用。
8. 按上面的模板写一份测试记录。

如果这 8 步都成功，再考虑导入真实 Skill。  
如果中间失败，就停在失败点，不要扩大同步范围。
