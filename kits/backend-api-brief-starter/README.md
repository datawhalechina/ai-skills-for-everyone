# Backend API Brief Starter

这是给普通用户准备的后端接口沟通 starter。

它搭配本项目维护的 [Backend API Brief Skill](../../skills/backend-api-brief/SKILL.md) 使用，但普通用户不需要单独安装 Skill。`prompts/normal-use.txt` 已经把关键规则写好了。

它不写后端代码，不改数据库，也不需要连接真实系统。你只要把业务需求放进 `inputs/`，再把 `prompts/normal-use.txt` 复制给 Trae Agent，就能得到两份 Markdown：

- `outputs/api-explainer.md`：给自己看的接口说明，帮你理解后端要做什么、要先确认什么。
- `outputs/backend-handoff.md`：给开发同学或编码 Agent 的后端交接稿。

先读：

- [START_HERE.md](START_HERE.md)

目录说明：

- `inputs/`：放你的业务需求。正式使用时建议复制模板为 `inputs/api-request.md`。
- `outputs/`：放生成后的接口说明和后端交接稿。
- `prompts/`：可直接复制给 Trae Agent 的提示词。
- `samples/`：第一次测试用的虚构样例。
- `troubleshooting.md`：常见问题。

推荐顺序：

1. 先用 `samples/sample-api-request.md` 跑一次。
2. 再把自己的需求复制到 `inputs/api-request.md`。
3. 复制 `prompts/normal-use.txt` 给 Trae Agent。
4. 检查两份输出有没有编造、越权、漏掉待确认问题。

这个 starter 的目标不是替你决定最终接口，也不是让小白直接改后端，而是把需求先整理到开发可以讨论和评审的程度。
