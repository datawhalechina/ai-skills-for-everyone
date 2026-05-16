---
id: gpt-image2-ppt-skills
name: GPT Image2 PPT Skills
source_type: github
source_url: https://github.com/JuneYaooo/gpt-image2-ppt-skills
repo: JuneYaooo/gpt-image2-ppt-skills
author: JuneYaooo
license: Apache-2.0
category: writing-and-office
category_name: 写作与办公
subcategory: ppt-generation
subcategory_name: PPT 生成 / 大纲生成
recommendation_slot: advanced
status: recommended
difficulty: advanced
stars: "约 570"
forks: "约 27"
latest_release: "无 release，按 main 分支核查"
checked_at: 2026-05-16
starter_path: ""
tutorial_path: ""
collection_path: ../../collections/writing-and-office.md
tags:
  - ppt
  - pptx
  - gpt-image-2
  - presentation
  - template-clone
  - visual-design
---

# GPT Image2 PPT Skills

## 基本信息

- 来源链接：https://github.com/JuneYaooo/gpt-image2-ppt-skills
- 作者或组织：JuneYaooo
- 仓库或项目名称：`JuneYaooo/gpt-image2-ppt-skills`
- 许可证：Apache-2.0
- GitHub stars：约 570
- Forks：约 27
- 最新发布：暂无 release，按 `main` 分支核查
- 核查日期：2026-05-16
- 收录状态：推荐，进阶 PPT Skill

## 一句话说明

GPT Image2 PPT Skills 用 OpenAI `gpt-image-2` 生成视觉风格很强的 16:9 演示稿，支持 10 套内置风格，也支持参考 `.pptx` 模板做版式仿制，最后输出 HTML viewer 和 `.pptx`。

## 适合谁

- 需要做视觉冲击更强的发布会、营销提案、课程封面、产品介绍或社区分享的人。
- 已经会用本地 Agent，并且愿意配置图片生成 API 的人。
- 有 API Key、预算和费用意识，知道先小样测试再生成整套 PPT 的人。
- 想根据一份参考模板仿出新内容的人。

## 不适合谁

- 完全小白第一次生成 PPT。
- 没有图片生成 API Key，或者不想处理 API 费用的人。
- 需要每个文本框、图表、形状都原生可编辑的人。
- 要处理公司机密模板、客户材料或未授权商业模板的人。

## 典型场景

- 生成一套高视觉风格的产品发布 PPT。
- 给课程、训练营、分享会做一套更像设计稿的演示文稿。
- 根据已有 `.pptx` 参考模板，仿出同风格的新主题。
- 为方案汇报先做视觉方向小样，再人工调整内容和细节。

## 怎么使用

最短路径：

1. 准备一个能读写本地项目、运行命令的 Agent。
2. 按原项目说明安装 Skill 和 Python 依赖。
3. 配置 `OPENAI_API_KEY`、`OPENAI_BASE_URL`、`GPT_IMAGE_MODEL_NAME` 等环境变量。
4. 用一个 3 到 5 页的小主题先跑测试，不要一上来生成正式大项目。
5. 如果使用模板克隆模式，按原项目说明准备本机演示文稿渲染依赖。

原项目提供的安装入口是：

```text
https://raw.githubusercontent.com/JuneYaooo/gpt-image2-ppt-skills/main/docs/install.md
```

注意：API Key 只放在本地 `.env` 或 Agent 工具设置里，不要写进提示词、截图、公开仓库或 issue。

## 示例输入

```text
请用 GPT Image2 PPT Skills 生成一份 5 页的产品介绍 PPT。

主题：面向普通人的 AI Skill 搜罗库
目标读者：第一次接触 Agent 的普通用户
风格：clean-tech-blue
输出：HTML viewer 和 .pptx

要求：
- 先生成 1 页封面让我确认方向。
- 不要编造项目数据。
- 文字要短，视觉要清楚。
```

## 预期输出

- 一组 16:9 幻灯片图片。
- 一个可以键盘翻页的 HTML viewer。
- 一个打包好的 `.pptx` 文件。

它更偏视觉交付。和 PPT Master 这类可编辑 PPTX 路线相比，它的版式和风格更强，但后期编辑性可能更弱，尤其是文字和图形被渲染成图片时。

## 优点

- 直接面向高视觉质量 PPT，不只是生成大纲。
- 内置 10 套风格，适合快速试不同视觉方向。
- 支持模板克隆，可以参考已有 `.pptx` 的版式和视觉语言。
- 输出 HTML viewer 和 `.pptx`，方便预览和交付。
- Apache-2.0 许可证，来源和复用边界比较清楚。

## 限制

- 需要 `gpt-image-2` 或兼容的图片生成 API，可能产生明显费用。
- 需要配置 API Key，对普通用户有门槛。
- 图片式幻灯片不适合需要大量后期逐字编辑的场景。
- 模板克隆模式依赖本地渲染和视觉分析能力，环境比普通 PPT 生成更复杂。
- 输出里的文字、数据、图表仍然需要人工复核。

## 风险和注意事项

- 不要把公司机密模板、客户材料或未公开方案交给外部模型处理。
- 不要上传没有授权的商业 PPT 模板、字体、图片、报告或课程材料。
- 图片生成模型可能把文字画错、把数字画错，正式使用前要逐页检查。
- API Key 不能提交到 GitHub，也不要发到公开 issue 或聊天截图里。
- 如果使用兼容中转服务，要自己确认服务商的费用、稳定性和数据处理规则。

## 结论

推荐作为 PPT 生成小类的进阶 Skill 收录。它不适合作为普通人的第一条 PPT 路线，但很适合已经跑通过基础流程、想要更强视觉效果、也能承担图片生成 API 配置和费用的人。
