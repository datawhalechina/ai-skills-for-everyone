---
name: weekly-status
description: Generate grounded Chinese weekly reports, project status updates, or leader-facing progress summaries from loose notes, task records, meeting notes, commits, chat excerpts, or short bullet lists. Use when the user asks to write a weekly report, status update, work summary, project update, manager update, 本周总结, 周报, 日报转周报, or turn scattered work notes into a clear office-ready update for a direct manager, leader, or project owner.
---

# Weekly Status

## Goal

Turn scattered work records into clean Markdown that helps a manager answer:

1. Is this work on track?
2. What changed this week?
3. What risk or decision needs attention?
4. What will happen next week?
5. Who needs to support what?

This is not a diary and not a task dump. It is an upward communication document.

Default outputs:

- `outputs/leader-summary.md`: a short decision-oriented summary.
- `outputs/weekly-report.md`: a polished weekly report with enough detail to review.

## Core Rules

1. Use only input facts. Do not invent progress, dates, numbers, owners, decisions, commitments, impact, or conclusions.
2. Prefer outcome over activity. `整理 12 份文档并拆成 86 个片段` is better than `周一整理文档`.
3. Preserve uncertainty. Put unclear items under `待确认`, or write `暂不能判断` when evidence is insufficient.
4. Separate facts, judgment, risks, next actions, and asks.
5. Make risks actionable: describe impact and proposed handling, not just the problem.
6. Make support requests specific: who should confirm what, ideally by when.
7. Keep the tone steady, factual, and leader-facing. Avoid slogans, self-praise, excuses, and stiff officialese.
8. Keep Markdown clean: short headings, compact bullets, and tables only when they make ownership or deadlines clearer.
9. If inputs contain sensitive data such as customer names, phone numbers, account IDs, prices, contracts, internal system names, or unreleased financial data, ask whether to redact before finalizing.

## Input Handling

When working in a starter folder, read input in this order:

1. `inputs/weekly-notes.md`
2. `inputs/put-your-notes-here.md`
3. Other clearly relevant files under `inputs/`
4. Pasted notes in the user message

Ignore unrelated files. For a sample run, use `samples/sample-weekly-notes.md` only when the user asks to test with the sample.

Identify these fields if present:

- reporting period
- reader
- project or work direction
- this week's goal
- current stage

If the input is too thin to write a useful report, ask up to 3 clarifying questions before drafting.

## Reasoning Workflow

1. Extract facts from the notes.
2. Reduce activity logs into 2-4 meaningful progress points.
3. Infer only evidence-backed status:
   - `正常推进`: clear progress and no stated blocker.
   - `有风险`: progress exists, but a blocker, quality issue, dependency, or uncertainty may affect next steps.
   - `需决策`: progress depends on an explicit decision or policy confirmation.
   - `信息不足`: input does not support a status judgment.
4. For each risk, write:
   - the issue
   - why it matters
   - next handling or owner if stated
5. For next week, prefer action verbs: `确认`、`补齐`、`归档`、`测试`、`演示`、`复核`.
6. Move low-value chronology into the background or omit it.

## Output Files

### `outputs/leader-summary.md`

Use this structure:

```text
# 领导版摘要：{项目 / 方向}

> 周期：{周期或本周}
> 当前状态：{正常推进 / 有风险 / 需决策 / 信息不足}

## 本周结论

{2-3 句话。先说进展，再说风险或判断。}

## 需要关注

- {最重要风险、决策或资源事项}

## 下周动作

- {最关键的 2-3 个动作}

## 需要支持

- {需要谁确认什么；没有就写 暂无明确事项}
```

Keep this file short enough to read in 30 seconds. Prefer 8 bullets or fewer.

### `outputs/weekly-report.md`

Use this structure:

```text
# 周报：{项目 / 方向}

> 周期：{周期或本周}
> 汇报对象：{对象；没有就写直属领导或项目负责人}
> 当前状态：{正常推进 / 有风险 / 需决策 / 信息不足}

## 本周结论

{一小段，说明这周推进到哪里、是否达到本周目标、为什么还不能/可以进入下一阶段。}

## 关键进展

- ...

## 风险与判断

- **{风险}**：{影响}。{已采取或下周处理方式}

## 下周重点

- ...

## 需要协作

| 事项 | 协作方 | 期望结果 |
| --- | --- | --- |
| ... | ... | ... |

## 待确认

- ...

## 明细记录

- ...
```

Default length: 600-1000 Chinese characters. If the user asks for a shorter report, omit `明细记录`. If the input is very simple, avoid the table and use bullets.

## Style Guide

- Start with the conclusion. Do not make the reader assemble the conclusion from bullets.
- Use `当前状态` to make the report scannable.
- Use `关键进展`, not only `本周完成`, so the report emphasizes value and movement.
- Use `风险与判断`, not only `风险 / 阻塞`, so the report includes impact and handling.
- Use `明细记录` for lower-level facts that are useful but not worth leading with.
- Prefer plain wording:
  - `已完成第一版小样，结果可继续验证`
  - `暂不建议扩大试点`
  - `需要财务确认报销标准版本`
  - `当前样本量不足，不能判断整体效果`
- Avoid:
  - `持续赋能`
  - `取得突破性进展`
  - `全面推进`
  - `相关工作有序开展`
  - `由于某某原因所以没有完成`

## File Writing Rules

When the user asks to generate the report in a workspace:

1. Create `outputs/` if it does not exist.
2. Write the compact summary to `outputs/leader-summary.md`.
3. Write the full report to `outputs/weekly-report.md`.
4. In the final response, mention both file paths and any caveat, especially sensitive information or thin input.

If file writing is not possible, return both Markdown documents in chat with clear filenames.

## Final Checks

Before finishing, check:

- No invented facts.
- No sensitive information exposed unnecessarily.
- The first screen gives a clear status and conclusion.
- Completed work, ongoing work, risks, and asks are not mixed.
- Risks include impact or handling.
- Support requests name the party and requested confirmation where possible.
- `leader-summary.md` can be read quickly.
- `weekly-report.md` is polished enough to paste into an office document.
