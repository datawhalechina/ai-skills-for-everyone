---
id: weekly-status
name: Weekly Status
source_type: local
source_url: ../../skills/weekly-status/SKILL.md
repo: nameless0120/ai-skills-for-everyone
author: AI Skills for Everyone
license: CC BY-NC-SA 4.0
category: writing-and-office
category_name: 写作与办公
subcategory: weekly-status
subcategory_name: 周报 / 状态更新
recommendation_slot: easiest
status: recommended
difficulty: beginner
stars: "不适用"
forks: "不适用"
latest_release: "随本仓库维护"
checked_at: 2026-05-16
starter_path: ../../kits/weekly-status-starter/README.md
tutorial_path: ""
collection_path: ../../collections/writing-and-office.md
tags:
  - weekly-report
  - status-update
  - office
  - starter
  - local-skill
---

# Weekly Status

## 基本信息

- 来源链接：[skills/weekly-status/SKILL.md](../../skills/weekly-status/SKILL.md)
- 开箱工作区：[Weekly Status Starter](../../kits/weekly-status-starter/README.md)
- 作者或组织：AI Skills for Everyone
- 仓库或项目名称：`nameless0120/ai-skills-for-everyone`
- 许可证：随项目文档使用 CC BY-NC-SA 4.0
- GitHub stars：不适用
- Forks：不适用
- 最近更新时间：随本仓库维护
- 核查日期：2026-05-16
- 收录状态：推荐

## 一句话说明

Weekly Status 是本项目维护的轻量周报 Skill，用来把零散工作记录整理成自然、可信、可复核的中文 Markdown 周报，并同时生成领导版摘要。

## 适合谁

- 每周要写周报、项目 update、阶段进展的人。
- 已经会用 Trae 打开文件夹、复制提示词的人。
- 不想接入真实办公系统，只想先把零散记录整理清楚的人。

## 典型场景

- 把一周任务记录整理成给主管看的周报。
- 把项目进展、问题、下周计划整理成团队状态更新。
- 把日报、会议笔记、待办记录合成一份周总结。

## 怎么使用

普通用户最短路径：

1. 打开 [Weekly Status Starter](../../kits/weekly-status-starter/README.md)。
2. 把本周记录放进 `inputs/weekly-notes.md`。
3. 复制 `prompts/normal-use.txt` 给 Trae Agent。
4. 检查 `outputs/leader-summary.md` 和 `outputs/weekly-report.md`。

进阶用户可以直接把 [SKILL.md](../../skills/weekly-status/SKILL.md) 放到自己使用的 Agent Skill 目录里，再让 Agent 按这个 Skill 处理周报。

## 示例输入

```text
周一：跟产品确认客服工单分类口径。
周二：整理 300 条历史工单，发现退款、物流、账号三类最多。
周三：测试自动分类，退款类效果还可以，账号类经常错。
问题：缺少历史标注，客服组这周比较忙。
下周：继续补标注，准备给主管看一个小样。
```

## 预期输出

- `outputs/leader-summary.md`：适合领导快速浏览的状态判断和关注事项。
- `outputs/weekly-report.md`：先给结论、再展开进展、风险、下周动作和协作事项的中文周报。
- 默认包含当前状态、本周结论、关键进展、风险与判断、下周重点、需要协作、待确认和明细记录。
- 不编造输入里没有的进展和数据。

## 优点

- 不需要安装依赖，不需要连接飞书、GitHub、邮箱或内部系统。
- 普通人可以直接从 starter 开始用。
- 规则强调事实边界、自然语气和隐私脱敏。
- 适合后续根据真实用户反馈持续打磨。

## 限制

- 它不是自动抓取办公系统数据的工具，需要用户自己提供材料到 `inputs/`。
- 输入太少时，只能生成很短的周报，或者先追问。
- 目前主要面向中文办公场景。

## 后续改造方向

- 根据真实用户反馈继续优化版式、层次和措词。
- 后续可以接入更复杂的数据来源，例如 Git、飞书文档或会议转写，但当前 starter 暂不接入真实办公系统。

## 风险和注意事项

- 不要把客户隐私、账号、合同、报价、内部数据原样放进去。
- 输出必须人工复核，尤其是进度、风险、承诺和下周计划。
- 如果要公开分享真实周报，请先脱敏。

## 结论

推荐作为“周报 / 状态更新”小类的最省心路线。这个场景没有特别合适的高星开源 Skill，先用本项目维护的轻量 Skill + starter，更符合普通人的使用方式。
