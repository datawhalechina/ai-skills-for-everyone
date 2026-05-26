# Weekly Status Starter

这是给普通用户准备的周报 / 状态更新轻 starter。

它搭配本项目维护的 [Weekly Status Skill](../../skills/weekly-status/SKILL.md) 使用，但普通用户不需要单独安装 Skill。`prompts/normal-use.txt` 已经把关键规则写好了。

它不需要安装额外依赖，也不需要接入真实办公系统。你只要把本周零散记录放进 `inputs/`，再把 `prompts/normal-use.txt` 复制给 Trae Agent，就能得到两份 Markdown：

- `outputs/leader-summary.md`：适合领导快速浏览的状态判断。
- `outputs/weekly-report.md`：先给结论、再展开进展和风险的周报草稿。

先读：

- [START_HERE.md](START_HERE.md)

目录说明：

- `inputs/`：放你的本周记录、项目进展、问题和下周计划。
- `outputs/`：放生成后的领导版摘要和完整周报。
- `prompts/`：可直接复制给 Trae Agent 的提示词。
- `samples/`：第一次测试用的虚构样例。
- `troubleshooting.md`：常见问题。

推荐顺序：

1. 先用 `samples/sample-weekly-notes.md` 跑一次。
2. 再把自己的记录复制到 `inputs/weekly-notes.md`。
3. 复制 `prompts/normal-use.txt` 给 Trae Agent。
4. 检查 `outputs/leader-summary.md` 和 `outputs/weekly-report.md` 有没有编造、遗漏、太像模板。

这个 starter 的目标不是替你编故事，也不是把流水账重新排版，而是把你已经做过的事整理成清楚、好读、能帮助上级判断下一步的 Markdown。
