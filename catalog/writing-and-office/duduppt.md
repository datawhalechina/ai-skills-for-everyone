---
id: duduppt
name: duduppt
source_type: github
source_url: https://github.com/Shine8592/duduppt
repo: Shine8592/duduppt
author: Shine8592
license: MIT
category: writing-and-office
category_name: 写作与办公
subcategory: ppt-generation
subcategory_name: PPT 生成 / 大纲生成
recommendation_slot: advanced
status: recommended
difficulty: intermediate
stars: "0（新项目，2026-07 创建）"
forks: "0"
latest_release: "v2.1.0, 2026-09-16"
checked_at: 2026-10-12
starter_path: ""
tutorial_path: ""
collection_path: ../../collections/writing-and-office.md
tags:
  - ppt
  - pptx
  - presentation
  - consulting
  - qa
  - evidence-chain
  - chinese
  - agent-skill
---

# duduppt

## 基本信息

- 来源链接：https://github.com/Shine8592/duduppt
- 作者或组织：Shine8592
- 仓库或项目名称：`Shine8592/duduppt`
- 许可证：MIT
- GitHub stars：0（新项目，2026-07-05 创建；核心差异在方法论而非流行度）
- Forks：0
- 最近更新时间：2026-10-12
- 最新发布：v2.1.0，2026-09-16
- 核查日期：2026-10-12
- 收录状态：推荐

## 一句话说明

duduppt 是一个强调「证据链可审计」的咨询风格 PPT 生成 Skill：不只把材料排成页面，还会对每页结论做盲读验收、把 PPT 里的数字追溯到证据来源，并给出一份质量审计报告。

## 适合谁

- 需要做咨询、汇报、经营分析类 PPT，且**数据必须站得住脚**的人。
- 担心 AI 编数字，希望每个结论都能追溯到出处的使用者。
- 中文用户（内置中文字体东亚槽位 `<a:ea>` 修正，避免中文字体静默回退）。
- 需要在已有 PPT 上小改（改几句话、换图表数据）而不想整份重做的人。

## 典型场景

- 把一份行业报告做成带数据溯源的汇报 PPT。
- 生成 PPT 后自动检查：占位文案、图表空白、中文缺字体、字号过小、文本溢出、元素遮挡、对比度不足。
- 交付前生成《质量审计报告》，随 PPT 一起交给客户或领导。
- 在已有 PPTX 上改指定文字或图表数据，保留原设计与未改动页面。
- 同一份内容出多种画幅：汇报 16:9、小红书 3:4、公众号 9:16。

## 怎么使用

最短路径：

1. 准备 Python 3.10+ 与 Node.js（生成引擎用 pptxgenjs）。
2. 安装 Skill：

   ```bash
   npx skills add Shine8592/duduppt
   ```

   或在 Claude Code 中：

   ```bash
   /plugin marketplace add Shine8592/duduppt
   /plugin install duduppt@duduppt
   ```

3. 安装依赖：

   ```bash
   pip install python-pptx Pillow
   npm install pptxgenjs
   ```

4. 在任意支持文件读写与命令执行的 Agent 中使用（Claude Code、Codex、OpenCode、Cursor 等），
   把材料交给 Agent，让它按 `skills/duduppt/SKILL.md` 的流程生成。
5. 交付前跑审计报告：

   ```bash
   python skills/duduppt/scripts/qa-report.py --deck output.pptx \
       --evidence evidence.json
   ```

## 使用前依赖

| 依赖 | 是否必需 | 说明 |
| --- | --- | --- |
| 模型 / API key | 否（可选） | 基础生成只需 Agent 自身能力；Deep Research 可选配 Tavily / Exa / Querit key，配图可选 Agnes / Pexels key。 |
| 本地环境 | 是 | Python 3.10+（QA 与编辑脚本）、Node.js 18+（pptxgenjs 生成）。 |
| 第三方账号 | 否 | 不需要登录任何平台。 |
| 网络访问 | 部分 | 安装依赖与可选联网搜索需要；生成与 QA 本身可离线。 |
| 本地路径 | 是 | 输入材料目录、输出目录；版本快照默认在 `iterations/`。 |

## 示例输入

```text
请用 duduppt 把 projects/q3-report/sources/report.pdf 做成一份 10 页左右的汇报 PPT。

目标读者：部门负责人
风格：咨询风、结论先行、每页要有 SO WHAT
重点：市场变化、关键数据、风险和下季度建议
要求：每个数字都要能追溯到报告里的出处，交付时附质量审计报告
输出：可编辑 .pptx
```

## 预期输出

- 一个可在 PowerPoint 中编辑的 `.pptx` 文件。
- 每页有可被证据挑战的强标题，而非只放图表。
- 一份《质量审计报告》（Markdown + JSON），包含盲读验收、断言溯源、机械检查与版本对比结果。
- 若使用原生图表脚本，图表是带「编辑数据」的真 Chart 对象，可在 PowerPoint 里直接改数据。

## 优点

- **证据链可审计**：这是同类工具里少见的差异点。盲读验收（不看原稿只看成品检验信息传达）、断言溯源（PPT 里的数字 ↔ 证据表）、版本对比，三者组合成可随交付的审计报告。
- **QA 检查项完整**：机械检查 11 项，零依赖（仅标准库 zipfile + 正则），秒级返回，不依赖渲染。
- **中文处理扎实**：内置中文字体东亚槽位修正，专门解决 pptxgenjs 写 `fontFace` 时中文静默回退到系统默认字体的问题；另有中文 run 上残留 `lang="en-US"` 的检测。
- **支持编辑既有 PPTX**：命中「改一个字等于重做一遍」的全行业痛点，未改动页与原设计保留，默认输出到新文件、`--inplace` 时自动备份。
- **多画幅**：9 种画布，覆盖小红书 3:4、公众号 9:16 等中文投放场景。
- **MIT 许可证**，复用与二次开发边界清楚；Skill 形态，可用 `npx skills add` 一键安装。
- 文档完整：SKILL.md、QUICKSTART、SUBMISSION、竞品分析 v3 均在仓库内。

## 限制

- **不是纯网页工具**：需要 Python、Node.js 与 Agent 工具配合，非技术用户有一定门槛。
- **星标数为 0**：是新项目（2026-07 创建），社区规模与 ppt-master（60k+）差距很大；收录看重的是方法论差异而非流行度。
- 高质量输出依赖模型能力；项目 README 与竞品分析也明确说明「工具拥有工作流，模型决定上限」。
- 不配搜索 / 生图 key 也能用，但需要联网补证据或 AI 配图时效果取决于 Agent 自带能力。
- `native-charts.py`、`edit-deck.py`、`omml-formula.py` 依赖 `python-pptx`，需单独安装。
- 生成过程会执行脚本、读写文件，应在可信工作区使用。
- 复杂动画、转场、SmartArt 未支持（与同类项目的取舍一致，不追求全覆盖）。

## 风险和注意事项

- 不要把公司机密、客户隐私或未公开材料直接交给外部模型。
- 使用报告、网页和图片材料时注意版权与引用来源；项目提供 `collect-credits.py` 做图片来源登记。
- **PPT 里的数据与结论仍需人工复核**：工具能提示数字是否可溯源，但不能替你判断结论对错。
- 用于商业场景时保留 MIT 要求的版权与许可声明。
- 编辑既有 PPTX 时建议先跑 `snapshot.py save` 归档，便于回滚。

## 结论

推荐收录。它覆盖「PPT 生成」这一高优先级办公场景，且提供了同类工具中少见的可审计能力：盲读验收、断言溯源、质量审计报告。与 ppt-master 相比，它不追求原生对象模型的深度覆盖，而是把重点放在「生成结果可信、可追溯、可审计」，定位清晰、互补性强。MIT 许可证、Skill 形态、一键安装、文档完整，符合收录要求。
