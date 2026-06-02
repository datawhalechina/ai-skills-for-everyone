---
name: backend-api-brief
description: Turn plain-language business requirements into two beginner-friendly backend planning documents: a developer-facing backend handoff and a plain-language API explainer for the requester. Use when the user wants to plan a backend feature, clarify API requirements, prepare an interface spec for developers, understand what backend work is needed, review API permission or data risks before implementation, or convert vague product needs into backend handoff docs without writing code or changing databases.
---

# Backend API Brief

## Goal

Turn a loose business request into two backend planning documents:

Default outputs, in the order a beginner should read them:

- `outputs/api-explainer.md`: a plain-language explanation for the requester.
- `outputs/backend-handoff.md`: a developer-facing backend handoff.

This skill is for planning and handoff. It does not implement code, run migrations, connect to production systems, or modify databases.

## Core Rules

1. Do not write or edit backend code unless the user explicitly starts a separate implementation task.
2. Do not generate production SQL, destructive migration commands, real credentials, or live database instructions.
3. Use the user's facts first. If something is unclear, mark it under `待确认` instead of inventing it.
4. Ask at most 5 targeted clarifying questions when the request is too vague to produce a useful API brief.
5. Prefer plain Chinese when the user's input is Chinese.
6. Separate what the requester needs to understand from what the developer needs to implement.
7. Treat backend authorization as server-side. Never accept "the frontend hides the button" as a permission solution.
8. Keep outputs practical: enough for a developer to act, not a textbook.
9. Explain unavoidable backend terms in plain language the first time they appear, for example `migration（数据库结构变更）` or `backfill（补齐历史数据）`.
10. Label every inferred item as `建议` or `假设`, not as a final decision.
11. If the input contains customer data, secrets, account IDs, internal URLs, prices, contracts, or unreleased business details, ask whether to redact before finalizing.

## Input Handling

When working in a starter folder, read input in this order:

1. `inputs/api-request.md`
2. `inputs/put-your-request-here.md`
3. Other clearly relevant files under `inputs/`
4. Pasted requirements in the user message

Ignore unrelated files. If there is no starter folder, use the user's pasted request.

Extract these fields when present:

- feature name
- target user or actor
- business goal
- current system context
- roles and permissions
- data objects
- state changes
- list, search, filter, or sort requirements
- compatibility constraints
- email, SMS, invite link, reset link, or share link flows
- known risks or open questions

## Clarifying Questions

Ask questions only when needed. Prefer questions that unblock API design:

- Who can perform this action, and who cannot?
- What should happen after the action succeeds?
- Can the action be undone or restored?
- Should old data be migrated or backfilled?
- Does this affect existing clients, pages, reports, or integrations?
- If this uses email, SMS, or an external link, how should the token expire, be revoked, retried, and protected from log leakage?

If the user asks to continue without answers, proceed with clearly labeled assumptions.

## Two-Document Output Policy

Default to two documents:

- `api-explainer.md` is for the requester. It should explain what backend work is involved, which decisions they need to make, and what to ask the developer.
- `backend-handoff.md` is for the developer or coding agent. It should contain the concise API proposal, permissions, data reminders, test suggestions, and technical confirmation points.
- Keep `api-explainer.md` plain and reassuring. Avoid endpoint overload; explain only the minimum API terms needed.
- Keep `backend-handoff.md` specific and compact. It can use endpoint paths, status codes, and migration reminders.
- Keep each file practical, not exhaustive. For simple features, target 700-1200 Chinese characters per file.
- Put risk checks inside the relevant section of each document. Do not create a separate risk file unless the user asks.
- Put deep details under `待确认` instead of expanding every possible backend option.
- Use tables only when they make permissions, endpoints, or risks easier to scan.

## Workflow

### 1. Restate the Feature

Summarize the user's request in 3-5 bullets:

- what problem it solves
- who uses it
- what changes in the system
- what is out of scope if stated
- what is unknown

### 2. Model the Backend Surface

Identify conceptual backend pieces:

- **Actors**: user roles, services, admins, external systems.
- **Resources**: domain objects such as projects, tasks, comments, files, orders.
- **Actions**: create, update, archive, restore, approve, reject, export.
- **State rules**: allowed status values and transitions.
- **Permission boundaries**: record-level, field-level, project/team/tenant-level.
- **External links**: token creation, expiry, revocation, replay protection, rate limits, and delivery failure handling.

Keep this conceptual. Mention possible database changes only as reminders, not final schema.

### 3. Write Requester Explainer

Write `outputs/api-explainer.md` first with this structure:

```text
# 给自己看的接口说明：{功能名}

## 这件事后端要做什么

## 你需要先决定什么

## 它大概会有哪些接口

## 哪些地方容易出问题

## 你可以这样问开发

## 暂时不要做什么
```

This file should help a beginner understand and discuss the backend work. Avoid pretending the requester must understand backend implementation.

### 4. Write Developer Handoff

Write `outputs/backend-handoff.md` with this structure:

```text
# 后端开发交接：{功能名}

## 需求摘要

## 建议接口

| 方法 | 路径 | 用途 | 权限 | 备注 |
| --- | --- | --- | --- | --- |

## 权限规则

## 数据变更提醒

## 错误码与状态码

## 测试建议

## 待确认
```

Keep this file short enough to paste into an issue, ticket, or chat message. It should be usable as an implementation starting point, but not as final code.

### 5. Optional Detailed API Brief

Only write `outputs/api-brief.md` if the user asks for a detailed API brief, OpenAPI draft, or full design document. Use this structure:

```text
# 后端接口说明书：{功能名}

## 1. 小白版结论

## 2. 本次假设

## 3. 需求摘要

## 4. 范围与非目标

## 5. 用户角色与权限

## 6. 核心数据对象

## 7. 状态与业务规则

## 8. 建议接口清单

| 方法 | 路径 | 用途 | 谁可以用 | 备注 |
| --- | --- | --- | --- | --- |

## 9. 请求 / 响应示例

## 10. 错误码与状态码

## 11. 数据变更提醒

## 12. 测试与验收用例

## 13. 待确认
```

For endpoint design:

- Use nouns for resources where possible.
- Use action endpoints only when they clarify domain behavior, such as `POST /tasks/{id}/archive`.
- Include permission notes per endpoint.
- Include 400, 401, 403, 404, 409, and 422 only when relevant.
- Include idempotency notes only when the action may be repeated, such as archive, restore, payment, import, export, or webhook-like actions.
- Avoid OpenAPI unless the user explicitly asks for it.

### 6. Review Risks

Do not create a separate risk file by default. Fold risk review into:

- `api-explainer.md` under `哪些地方容易出问题`
- `backend-handoff.md` under `数据变更提醒`, `测试建议`, and `待确认`

If the user asks for a separate risk review, write `outputs/api-risk-review.md` with this structure:

```text
# API 风险检查：{功能名}

## 结论

{Ready / Ready with changes / Needs more design work 的中文判断}

## 风险清单

| 严重程度 | 领域 | 问题 | 影响 | 建议 |
| --- | --- | --- | --- | --- |

## 重点检查

### API 设计

### 权限与越权

### 数据与迁移

### 兼容性

### 测试与上线验证

## 待确认问题
```

Use severity levels:

- `高`: could cause data leakage, data loss, production incident, incompatible API change, or broken permission boundary.
- `中`: likely to cause bugs, support cost, migration risk, or unclear implementation.
- `低`: useful improvement, naming cleanup, documentation gap, or future optimization.
- `优点`: a good design choice worth keeping.

Always check:

- API names and HTTP methods match behavior.
- Lists have pagination when they can grow.
- Errors are structured and actionable.
- Permission checks happen on the backend.
- Field-level permission is explicit when some fields are more sensitive.
- Archived, deleted, restored, approved, or rejected states have clear rules.
- Data migration or backfill is called out when old records are affected.
- Existing clients or reports are not silently broken.
- Email, invite, reset-password, verification, or share-link flows call out token storage, expiry, replay, revocation, log leakage, rate limiting, and delivery failure handling.

## File Writing Rules

When the user asks to generate files in a workspace:

1. Create `outputs/` if it does not exist.
2. Write `outputs/api-explainer.md`.
3. Write `outputs/backend-handoff.md`.
4. Write optional `outputs/api-brief.md` or `outputs/api-risk-review.md` only when requested.
5. In the final response, mention the files and any major assumptions or blocked questions.

If file writing is not possible, return the two Markdown documents in chat with clear filenames.

## Final Checks

Before finishing, verify:

- The output does not claim code was implemented.
- No production SQL or destructive command is included.
- Permissions are server-side and specific.
- Data changes are reminders, not unsafe instructions.
- Risks include impact and suggested handling.
- Open questions are visible and not hidden in prose.
- A beginner can understand what to send to a developer next.
- `api-explainer.md` is understandable without backend experience.
- `backend-handoff.md` is specific enough for a developer to review.
