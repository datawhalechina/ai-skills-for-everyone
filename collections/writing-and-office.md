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

| Skill | 适合场景 | 难度 | 状态 |
| --- | --- | --- | --- |
| [PPT Master](../catalog/writing-and-office/ppt-master.md) | 从 PDF、DOCX、URL、Markdown 或文字材料生成可编辑 `.pptx` | 进阶 / 开发者 | 推荐收录，已有[第 1 课教程](../tutorial/01-use-ppt-skill.md)和[开箱工作区](../kits/ppt-master-starter/README.md) |

## 筛选重点

- 输出要能落到具体文档，不只是泛泛建议。
- 不能编造事实、数据、会议结论或他人发言。
- 最好支持用户提供上下文材料。
- 需要明确提醒隐私和公司机密风险。
- PPT 类优先看能不能生成 `.pptx`、Markdown 转 slides，或接入现有演示工具；只会给空泛大纲的项目先放低优先级。

## 暂不优先

- 只提供通用写作建议、没有固定场景的 prompt。
- 只会生成“精美但空”的 PPT 文案，不能处理材料和受众差异。
- 没有许可证、没有示例、无法判断是否可复用的项目。

## 已收录条目

- [PPT Master](../catalog/writing-and-office/ppt-master.md)：PPT 生成类第一条。它直接提供 `skills/ppt-master/SKILL.md`，并把文档材料转成可编辑 PowerPoint 文件，优先级高。普通用户先看[第 1 课教程](../tutorial/01-use-ppt-skill.md)，再打开[开箱工作区](../kits/ppt-master-starter/README.md)。
