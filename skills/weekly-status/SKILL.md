---
name: weekly-status
description: Generate grounded Chinese weekly reports, project status updates, or leader-facing progress summaries from loose notes, task records, meeting notes, commits, chat excerpts, or short bullet lists. Use when the user asks to write a weekly report, status update, work summary, project update, manager update, 本周总结, 周报, 日报转周报, or turn scattered work notes into a clear office-ready update for a direct manager, leader, or project owner.
---

# Weekly Status

## Goal

Turn scattered work records into a clear, factual weekly report or status update. The default reader is a direct manager, leader, or project owner who needs to quickly understand progress, risk, next steps, and whether a decision or support is needed.

## Core Rules

1. Use only information present in the input. Do not invent progress, dates, numbers, names, decisions, commitments, or results.
2. Separate completed work, work in progress, risks, next steps, collaboration needs, and unknowns.
3. Preserve uncertainty. Put unclear items under `待确认` instead of filling gaps.
4. Write in natural Chinese. Avoid stiff templates, inflated claims, slogans, and empty phrases.
5. Keep sensitive details safe. If inputs contain customer names, phone numbers, account IDs, prices, contracts, internal system names, or other private data, ask whether to redact before producing a final version.
6. Prefer concise output. Default to 300-500 Chinese characters unless the user asks for a detailed version.
7. Write for leadership review. Be respectful, steady, and outcome-oriented. Do not sound casual, defensive, boastful, or like a diary.

## Workflow

1. Read the available input files or pasted notes.
2. Identify the reporting period if it is stated. If not stated, use `本周`.
3. Extract concrete facts:
   - tasks finished
   - work still in progress
   - blockers, risks, dependencies
   - next-week plans
   - support needed from other people
4. Group related facts by project or topic when that makes the report easier to read.
5. Prioritize what a leader needs first: finished outcomes, important progress, risks, next decisions, and support needed. Move low-value details out or omit them.
6. Draft the report with this default structure:

```text
# 周报

## 本周完成

## 进行中

## 风险和阻塞

## 下周计划

## 需要协作

## 待确认
```

7. If the input is too thin to write a useful report, ask up to 3 clarifying questions before drafting.
8. If the user asks for a shorter version, return a compact leader-facing update with only the highest-signal items.

## Tone

Use plain, leader-facing Chinese:

- Say `完成了客服工单分类口径确认` instead of `全面推进客户服务智能化能力建设`.
- Say `账号类识别还不稳定，需要补充标注样本` instead of `算法能力仍有提升空间`.
- Say `下周准备给主管看一个小样` instead of `下周将进行阶段性成果汇报`.
- Say `目前还不能直接自动派单，建议先做人工确认` instead of `这个地方可能还不太行`.
- Say `需要客服组协助抽样复核 50 条结果` instead of `客服那边最好帮忙看看`.

Avoid:

- Too casual: `这周还行，基本都弄了`.
- Too defensive: `因为对方太忙，所以没推进`.
- Too boastful: `取得了突破性成果`.
- Too vague: `持续优化相关工作`.

Prefer:

- Clear ownership: `已完成`、`正在推进`、`需要确认`.
- Measured wording: `初步验证`、`暂不建议上线`、`建议先小范围试用`.
- Actionable support requests: `需要谁在什么时候确认什么`.

## Output Checks

Before finishing, check:

- No invented facts.
- No sensitive information exposed unnecessarily.
- Completed work and ongoing work are not mixed.
- Risks are specific enough to act on.
- Next steps are concrete.
- The wording is appropriate for a direct manager or leader.
- The text sounds like a real person wrote it.
