# 写作与办公

这个合集收录能处理日常文字和办公任务的开源 Skill。先从周报、邮件、会议纪要、长文档摘要、PPT、表格分析、SOP、项目计划和文档润色这 9 类开始。

## 首批 Skill 类型

| Skill 类型 | 输入 | 输出 | 优先级 |
| --- | --- | --- | --- |
| 周报 / 状态更新 | 零散任务记录、项目进展 | 周报、项目 update | 高 |
| 商务邮件改写 | 口语化意图、草稿 | 清楚得体的邮件 | 高 |
| 会议纪要整理 | 录音转写、会议笔记 | 纪要、决议、待办 | 高 |
| 长文档摘要 | PDF、报告、文档 | 摘要、要点、FAQ | 高 |
| PPT 生成 / 大纲生成 | 主题、材料、目标听众 | `.pptx`、页标题、每页要点、讲稿 | 高 |
| 表格分析报告 | CSV、Excel、数据描述 | 数据洞察、结论、风险 | 中高 |
| 流程文档 / SOP | 操作步骤、经验说明 | 标准流程、检查清单 | 中高 |
| 任务拆解 / 项目计划 | 目标、期限、限制 | 任务列表、里程碑、风险 | 中 |
| 文档润色 / 去模板感 | 草稿、目标读者 | 更自然的正式文本 | 中 |

## 小类推荐位

每个小类最终尽量只留 2 到 3 个正式推荐：一个最省心，一个进阶，一个适合改造。最省心的位置可以是独立 Skill，也可以是我们做好的 starter 路线。现在只有 PPT 生成小类跑通了第一条完整样例，其他小类先留空，后面逐个补。

| 小类 | 最省心 | 进阶 | 可改造 | 状态 |
| --- | --- | --- | --- | --- |
| PPT 生成 / 大纲生成 | [PPT Master Starter](../kits/ppt-master-starter/README.md) | [PPT Master](../catalog/writing-and-office/ppt-master.md)<br>[GPT Image2 PPT Skills](../catalog/writing-and-office/gpt-image2-ppt-skills.md) | 待补充 | 已有基础路线和进阶视觉路线 |
| 周报 / 状态更新 | [Weekly Status](../catalog/writing-and-office/weekly-status.md)<br>[Weekly Status Starter](../kits/weekly-status-starter/README.md) | [Lark CLI Agent Skills](../catalog/writing-and-office/lark-cli.md)<br>[MLE-Agent](../catalog/writing-and-office/mle-agent.md) | Weekly Status 自动报告生成能力（计划中） | starter 已完成，后续重点改造自研 Skill |
| 商务邮件改写 | 待搜罗 | 待搜罗 | 待搜罗 | 待补 |
| 会议纪要整理 | 待搜罗 | 待搜罗 | 待搜罗 | 待补 |
| 长文档摘要 | 待搜罗 | 待搜罗 | 待搜罗 | 待补 |
| 表格分析报告 | 待搜罗 | 待搜罗 | 待搜罗 | 待补 |
| 流程文档 / SOP | 待搜罗 | 待搜罗 | 待搜罗 | 待补 |
| 任务拆解 / 项目计划 | 待搜罗 | 待搜罗 | 待搜罗 | 待补 |
| 文档润色 / 去模板感 | 待搜罗 | 待搜罗 | 待搜罗 | 待补 |

## 搜罗顺序

1. 先找会议纪要、商务邮件、周报这三类。它们高频、边界清楚，也容易判断质量。
2. 再找长文档摘要和 PPT 生成。这里要多看实际输出，尤其是 PPT，优先收能生成文件或接入演示文稿工具的 Skill。
3. 最后补表格分析、SOP、项目计划和文档润色。这几类容易和自动化、内容创作重叠，先收真正适合办公场景的项目。

## 搜索关键词

- `weekly report ai skill`
- `status update agent workflow`
- `meeting notes agent workflow`
- `meeting minutes ai skill`
- `business email prompt pack`
- `email rewrite agent workflow`
- `document summarization agent`
- `pdf summary ai workflow`
- `ppt generation ai skill`
- `generate pptx llm`
- `ppt outline ai workflow`
- `spreadsheet analysis agent`
- `excel analysis llm workflow`
- `sop generator ai workflow`
- `project planning agent workflow`
- `humanize business writing prompt`
- `office automation llm workflow`

## 先看这些

| 推荐位 | Skill | 适合场景 | 难度 | 状态 |
| --- | --- | --- | --- | --- |
| 最省心 | [PPT Master Starter](../kits/ppt-master-starter/README.md) | 普通人按教程生成可编辑 `.pptx` | 新手 | 已有[第 1 课教程](../tutorial/01-use-ppt-skill.md) |
| 最省心 | [Weekly Status](../catalog/writing-and-office/weekly-status.md) + [Starter](../kits/weekly-status-starter/README.md) | 把零散工作记录整理成周报或项目状态更新 | 新手 | 自研轻 Skill，暂不接入真实办公系统 |
| 进阶 | [PPT Master](../catalog/writing-and-office/ppt-master.md) | 从 PDF、DOCX、URL、Markdown 或文字材料生成可编辑 `.pptx` | 进阶 / 开发者 | 推荐收录 |
| 进阶 | [GPT Image2 PPT Skills](../catalog/writing-and-office/gpt-image2-ppt-skills.md) | 用 `gpt-image-2` 生成视觉风格更强的 PPT，支持模板克隆 | 进阶 | 推荐收录，需要图片生成 API |
| 进阶 | [Lark CLI Agent Skills](../catalog/writing-and-office/lark-cli.md) | 飞书 / Lark 内的站会汇总、邮件、文档和任务工作流 | 中等 | 推荐收录，适合已有飞书 / Lark 的团队 |
| 可参考 | [MLE-Agent](../catalog/writing-and-office/mle-agent.md) | 从 GitHub 或本地 Git 仓库生成技术周报 | 中等 | 可参考，偏开发者和机器学习团队 |

## 筛选重点

- 输出要能落到具体文档，不只是泛泛建议。
- 不能编造事实、数据、会议结论或他人发言。
- 最好支持用户提供上下文材料。
- 需要明确提醒隐私和公司机密风险。
- PPT 类优先看能不能生成 `.pptx`、Markdown 转 slides，或接入现有演示工具；只会给空泛大纲的项目先放低优先级。
- PPT 类要区分“可编辑原生 PPTX”和“图片式视觉 PPT”。前者适合后期改稿，后者适合视觉提案和风格样片。

## 暂不优先

- 只提供通用写作建议、没有固定场景的 prompt。
- 只会生成“精美但空”的 PPT 文案，不能处理材料和受众差异。
- 没有许可证、没有示例、无法判断是否可复用的项目。

## 已收录条目

- [PPT Master](../catalog/writing-and-office/ppt-master.md)：PPT 生成类第一条。它直接提供 `skills/ppt-master/SKILL.md`，并把文档材料转成可编辑 PowerPoint 文件，优先级高。普通用户先看[第 1 课教程](../tutorial/01-use-ppt-skill.md)，再打开[开箱工作区](../kits/ppt-master-starter/README.md)。
- [GPT Image2 PPT Skills](../catalog/writing-and-office/gpt-image2-ppt-skills.md)：PPT 生成类进阶条目。它使用 `gpt-image-2` 做高视觉风格 PPT，也支持模板克隆，但需要图片生成 API 和费用意识。
- [Weekly Status](../catalog/writing-and-office/weekly-status.md)：周报 / 状态更新类自研轻 Skill。普通用户走 [Weekly Status Starter](../kits/weekly-status-starter/README.md)，把零散工作记录放进 `inputs/`，复制提示词后生成周报草稿。
- [Lark CLI Agent Skills](../catalog/writing-and-office/lark-cli.md)：飞书 / Lark 官方命令行和 Agent Skills，适合站会汇总、邮件、文档和任务工作流。
- [MLE-Agent](../catalog/writing-and-office/mle-agent.md)：偏技术团队的周报生成工具，可从 GitHub 或本地 Git 仓库整理工作进展。
