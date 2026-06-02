# wshobson/agents backend-development：Case 1 试跑记录

## 基本信息

- 候选：`wshobson/agents` 的 `backend-development` plugin
- 来源：https://github.com/wshobson/agents
- 本地 commit：`5162141`
- 许可证：MIT
- 测试日期：2026-05-26
- 测试方式：文档级试跑。已读取 plugin 文档、`feature-development` command、`backend-architect` agent 和 `api-design-principles` skill；未在 Claude Code plugin runtime 中真实安装运行。
- 测试 Case：[Case 1：API 契约设计](../backend-skill-test-cases.md#case-1api-契约设计入门)

## 使用条件

- 最自然的使用环境是 Claude Code plugin marketplace。
- 安装路线：

```text
/plugin marketplace add wshobson/agents
/plugin install backend-development
```

- 关键命令：

```text
/backend-development:feature-development <feature description>
```

- 也可以自然语言调用 agent，例如让 `backend-architect` 设计认证 API。
- 对 Codex / Cursor / Gemini 等 harness 有生成适配层，但这不是普通用户最省心路径。

## 相关能力

这套 plugin 不是单个后端 prompt，而是一组后端工作流：

- `backend-development:feature-development`：端到端功能开发，要求按阶段写 `.feature-dev/` 输出文件，并在架构、测试等 checkpoint 等用户确认。
- `backend-development-backend-architect`：后端架构和 API 设计 agent，覆盖 REST / GraphQL / gRPC、鉴权、限流、缓存、观测性、测试策略等。
- `api-design-principles`：REST / GraphQL API 设计 skill，强调资源建模、HTTP 语义、版本、分页、错误格式和文档。

## Case 1 输出摘要

按 `backend-architect` 和 `api-design-principles` 的规则，理想输出会先把“项目任务管理”拆成资源和权限，再输出 API 契约。

### 它应该设计出的核心资源

- `projects`
- `project_members`
- `tasks`
- `task_comments`
- `task_status_transitions` 或状态机约束

### 代表性接口

```text
GET    /projects
POST   /projects
GET    /projects/{project_id}
GET    /projects/{project_id}/tasks
POST   /projects/{project_id}/tasks
GET    /tasks/{task_id}
PATCH  /tasks/{task_id}
POST   /tasks/{task_id}/comments
GET    /tasks/{task_id}/comments
POST   /tasks/{task_id}/archive
```

比较好的判断点：

- `archived` 不一定应该只是 `PATCH status=archived`，可以单独建归档动作接口，便于权限、审计和幂等处理。
- `blocked` 和 `done` 等状态需要状态流转规则，不能只当字符串随便改。
- 评论应该是任务子资源，并考虑分页。

### 权限边界

应该至少明确：

- 普通成员只能修改自己负责的任务。
- 项目管理员可以修改项目内所有任务。
- 归档任务是否只有管理员能做，需要继续确认。
- 评论权限是否跟项目成员身份绑定。
- 后端必须校验权限，不能依赖前端隐藏按钮。

### 错误码示例

```text
400 invalid_status_transition
401 unauthenticated
403 forbidden
404 task_not_found
409 task_already_archived
422 validation_error
```

### OpenAPI 草稿片段

理想输出应该能给出类似：

```yaml
paths:
  /projects/{project_id}/tasks:
    get:
      parameters:
        - name: status
          in: query
          schema:
            type: string
            enum: [todo, doing, blocked, done, archived]
        - name: assignee_id
          in: query
          schema:
            type: string
        - name: cursor
          in: query
          schema:
            type: string
      responses:
        "200":
          description: Paginated task list
        "403":
          description: User is not a project member
    post:
      responses:
        "201":
          description: Task created
        "422":
          description: Validation error
```

## 评分

| 维度 | 分数 | 说明 |
| --- | --- | --- |
| 需求澄清 | 4 | `feature-development` command 强制先做 Requirements Gathering，会问问题、验收标准、范围、技术约束和依赖。 |
| 设计质量 | 5 | `backend-architect` 覆盖 API 契约、权限、版本、分页、韧性、观测性和测试策略，Case 1 很匹配。 |
| 代码落地 | 3 | Case 1 不要求写代码；plugin 有实现阶段，但需要真实项目再测。 |
| 测试验证 | 4 | command 在后续阶段强制 test-automator、安全评审和性能评审；但 Case 1 只验证设计。 |
| 风险意识 | 5 | 明确覆盖鉴权、输入验证、API security、rate limit、observability 和 rollout。 |
| 普通用户友好度 | 2 | 能力强，但 plugin marketplace、slash command、checkpoint、`.feature-dev/` 对普通用户偏复杂。 |

## 亮点

- 不像普通 prompt，它有明确分阶段流程：需求、架构、实现、测试、安全、性能、部署、文档。
- 设计阶段会把 API、数据模型、安全、集成点、风险评估作为固定交付物。
- 会在 checkpoint 停下来让用户确认，这对后端很重要。
- 对 API 契约设计很强，适合 Case 1。

## 问题

- 对完全小白太重，需要理解 Claude Code plugin、slash command、agent 和输出目录。
- `feature-development` 是端到端工作流，包含前端、部署、文档等步骤；如果只想做 API 设计，可能需要单独调用 `backend-architect` 或 `api-design-principles`。
- 文档很大，plugin 很多，普通用户容易不知道该装哪个。
- Codex / Cursor 虽然有适配，但最自然体验仍是 Claude Code。

## 适合我们的用户吗

- 完全小白：不适合直接推荐。
- 普通办公用户：不适合。
- 轻技术用户：可以作为进阶路线，但需要教程把命令和 checkpoint 讲清楚。
- 开发者：适合，尤其是已有后端项目、能接受插件和多阶段工作流的人。

## 暂定结论

`wshobson/agents` 的 `backend-development` 适合进入“后端开发 / 进阶候选”。它不适合作为最省心路线，但很适合作为后端工程工作流的强候选。下一步应该继续跑 Case 2 和 Case 4，验证它在已有项目改动和数据库迁移场景下是否仍然克制、可测、风险清楚。
