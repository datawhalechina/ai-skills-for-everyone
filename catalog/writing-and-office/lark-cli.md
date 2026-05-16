---
id: lark-cli-agent-skills
name: Lark CLI Agent Skills
source_type: github
source_url: https://github.com/larksuite/cli
repo: larksuite/cli
author: larksuite
license: MIT
category: writing-and-office
category_name: 写作与办公
subcategory: office-platform-agent-skills
subcategory_name: 办公平台 Agent Skill
recommendation_slot: advanced
status: recommended
difficulty: intermediate
stars: "10.9k"
forks: "718"
latest_release: "v1.0.32 (2026-05-15)"
checked_at: 2026-05-16
starter_path: ""
tutorial_path: ""
collection_path: ../../collections/writing-and-office.md
tags:
  - lark
  - feishu
  - standup-report
  - office-automation
---

# Lark CLI Agent Skills

## 基本信息

- 来源链接：https://github.com/larksuite/cli
- 作者或组织：larksuite
- 仓库或项目名称：larksuite/cli
- 许可证：MIT
- GitHub stars：约 10.9k
- Forks：约 718
- 最近版本：v1.0.32，2026-05-15
- 核查日期：2026-05-16
- 收录状态：推荐，作为进阶办公平台 Skill 底座

## 一句话说明

这是飞书 / Lark 官方维护的命令行工具，内置多组 Agent Skills，可以让 Agent 操作文档、任务、日程、会议材料和工作流。

## 适合谁

- 团队已经在用飞书或 Lark 的人。
- 已经会让 Agent 安装依赖、登录账号、确认命令的人。
- 想把周报、站会总结、任务和会议材料放进同一个办公平台里处理的人。

## 典型场景

- 用 `lark-workflow-standup-report` 汇总 agenda 和 todo，生成站会或周报材料。
- 用 `lark-doc` 或 `lark-markdown` 把整理好的周报写进文档。

## 怎么使用

最短路径是：

1. 确认电脑里有 Node.js 和 npx。
2. 执行官方安装命令：`npx @larksuite/cli@latest install`。
3. 按官方流程完成应用配置和登录授权。
4. 让 Agent 使用对应 Skill，比如 `lark-workflow-standup-report`、`lark-doc` 或 `lark-markdown`。
5. 第一次测试只用虚构材料，不要直接接入真实客户或公司敏感信息。

## 示例输入

```text
请读取我本周的日程、任务和待办，整理成一份中文周报草稿。

要求：
- 分成“本周完成 / 进行中 / 风险 / 下周计划”。
- 不要编造没有出现在任务和日程里的内容。
- 不确定的地方单独列出来。
```

## 预期输出

正常情况下，Agent 可以基于飞书 / Lark 里的任务、文档、日程或会议材料，整理出周报、站会更新或会议相关文档。

## 优点

- 官方维护，文档完整，更新很近。
- 覆盖办公平台里的多个高频模块，不只处理单个文件。
- 自带多组 Agent Skills，适合把“读材料、整理、写回文档或邮件”串成工作流。

## 限制

- 需要飞书 / Lark 账号和开放平台授权。
- 权限范围要认真看，不能把它当成普通离线工具。
- 对完全小白来说，上手门槛高于一个单文件 starter。

## 风险和注意事项

- Agent 可能会在授权范围内读取或修改真实办公数据。
- 会议纪要、客户信息、公司内部文档都可能包含敏感内容。
- 建议第一次只用测试空间、测试账号或脱敏材料。

## 结论

推荐作为“周报 / 状态更新”的进阶路线。它不是最适合小白的入口，但很适合已经在飞书 / Lark 里工作的团队。
