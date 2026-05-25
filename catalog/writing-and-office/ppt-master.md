---
id: ppt-master
name: PPT Master
source_type: github
source_url: https://github.com/hugohe3/ppt-master
repo: hugohe3/ppt-master
author: Hugo He / hugohe3
license: MIT
category: writing-and-office
category_name: 写作与办公
subcategory: ppt-generation
subcategory_name: PPT 生成 / 大纲生成
recommendation_slot: advanced
status: recommended
difficulty: intermediate
stars: "约 16.6k"
forks: "约 1.6k"
latest_release: "v2.7.0, 2026-05-13"
checked_at: 2026-05-15
starter_path: ../../kits/ppt-master-starter/README.md
tutorial_path: ../../tutorial/01-use-ppt-skill.md
collection_path: ../../collections/writing-and-office.md
tags:
  - ppt
  - pptx
  - presentation
  - office
  - agent-skill
---

# PPT Master

## 基本信息

- 来源链接：https://github.com/hugohe3/ppt-master
- 普通人上手教程：[第 1 课：用开源 PPT Skill 生成可编辑 PPT](../../tutorial/01-use-ppt-skill.md)
- 开箱工作区：[PPT Master Starter](../../kits/ppt-master-starter/README.md)
- 作者或组织：Hugo He / `hugohe3`
- 仓库或项目名称：`hugohe3/ppt-master`
- 许可证：MIT
- GitHub stars：约 16.6k
- Forks：约 1.6k
- 最新发布：v2.7.0，2026-05-13
- 核查日期：2026-05-15
- 收录状态：推荐

## 一句话说明

PPT Master 是一个用于生成可编辑 PowerPoint 文件的 Agent Skill，可以把 PDF、DOCX、URL、Markdown 或直接粘贴的文字材料转成 `.pptx`。

## 适合谁

- 需要把报告、文章、网页或长文档做成演示文稿的人。
- 愿意在 Trae、VS Code Copilot Agent、命令行型 Agent 等环境里跑流程的人。
- 需要可编辑 PPT，而不是每页一张图片的人。

## 典型场景

- 把一份行业报告变成汇报 PPT。
- 把文章或网页整理成分享用演示文稿。
- 根据公司已有 PPT 模板生成新 deck。
- 生成带讲稿、动画或旁白的演示材料。

## 怎么使用

最短路径：

1. 准备 Python 3.10+。
2. 克隆仓库或下载 ZIP。
3. 运行 `pip install -r requirements.txt`。
4. 在支持本地项目读写和命令执行的 Agent 工具里使用，比如 Trae、VS Code Copilot Agent、命令行型 Agent。
5. 把 PDF、DOCX、URL、Markdown 或文本材料交给 Agent，让它按 `skills/ppt-master/SKILL.md` 生成 PPT。

项目也提供 Skill 安装方式：

```text
npx skills add hugohe3/ppt-master
```

部分 Agent 生态也支持从 marketplace 或 Skill 管理器安装，但安装 Skill 文件后仍要按项目说明安装 Python 依赖。

GitHub 打不开时，可以使用原项目官方 README 列出的 AtomGit 镜像：

```text
https://atomgit.com/hugohe3/ppt-master
```

普通用户仍然建议先走 [PPT Master Starter](../../kits/ppt-master-starter/README.md)，里面会按 GitHub、AtomGit、备用下载的顺序处理。

## 模型和图片配置

PPT Master 不要求必须配置 `gpt-image-2` key。基础用法里，当前 Agent 会读取 `SKILL.md`，负责内容理解、页面规划、逐页生成 SVG 和导出 `.pptx`。如果 Agent 本身带有图片生成能力，也可以用 Agent 自带能力补齐图片资产。

更推荐的进阶配置是：

- 主 Agent 模型使用 Anthropic Claude Opus 这一档的强模型，负责长文档理解、设计判断和 SVG 生成。
- 图片生成后端使用 OpenAI `gpt-image-2`，负责封面图、插图、示意图等图片资产。

`gpt-image-2` 配置写在本地 `.env` 或环境变量里：

```text
IMAGE_BACKEND=openai
OPENAI_API_KEY=your-openai-key
OPENAI_MODEL=gpt-image-2
OPENAI_OUTPUT_FORMAT=png
OPENAI_BACKGROUND=auto
OPENAI_MODERATION=auto
```

不要使用 `IMAGE_API_KEY`、`IMAGE_MODEL`、`IMAGE_BASE_URL` 这类旧式全局变量；PPT Master 当前要求使用服务商专属变量名。

## 示例输入

```text
请用 PPT Master 把 projects/q3-report/sources/report.pdf 做成一份 10 页左右的汇报 PPT。

目标读者：部门负责人
风格：商务、清楚、少装饰
重点：市场变化、关键数据、风险和下季度建议
输出：可编辑 .pptx
```

## 预期输出

- 一个可在 PowerPoint 中编辑的 `.pptx` 文件。
- 页面里的文本框、形状、图表等元素尽量保持可点击和可修改。
- 根据项目说明，导出文件通常会保存到 `exports/`，备份材料会放到 `backup/`。

## 优点

- 明确是 Skill 项目，仓库里有 `skills/ppt-master/SKILL.md`。
- 输出目标是原生可编辑 PPTX，不是把图片塞进 PPT。
- 支持 PDF、DOCX、URL、Markdown、网页等多种输入。
- 维护活跃，stars 和 forks 都很高，最新 release 很近。
- MIT 许可证，复用和二次开发边界比较清楚。

## 限制

- 不是纯网页工具，需要 Python 环境和 Agent 工具配合。
- 高质量输出依赖模型能力和上下文窗口，项目 README 也明确提醒这一点。
- 不配 `gpt-image-2` key 也能使用，但遇到需要 AI 图片资产的页面时，效果取决于 Agent 自带图片能力，或者需要手动补图。
- 对普通非技术用户来说，安装和排错仍有门槛。
- 生成 PPT 前后可能会执行脚本、读写文件，要在可信工作区里使用。

## 风险和注意事项

- 不要把公司机密、客户隐私或未公开材料直接交给外部模型处理。
- 使用网页、报告和图片材料时，要注意版权和引用来源。
- PPT 里的数据、结论和图表需要人工复核，不能只看版式是否漂亮。
- 如果用于商业场景，要保留 MIT 许可证要求的版权和许可声明。

## 结论

推荐收录。它正好覆盖“PPT 生成”这个高优先级办公场景，而且比普通大纲生成类 prompt 更接近真实交付物：能产出可编辑 `.pptx`，有完整仓库、Skill 文件、示例和活跃维护记录。
