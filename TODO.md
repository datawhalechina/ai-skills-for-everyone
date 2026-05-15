# AI Skills for Everyone TODO

这份 TODO 记录项目接下来要做什么。早期脑暴已经收束，当前重点是：先把第一个可跑通的教程和 PPT Starter 上传到 GitHub，再把它慢慢扩成一个社区可参与的 Skill Hub。

## 当前定位

**AI Skills for Everyone：开源 AI Skill 教程与社区索引。**

我们先教普通人用起来，再按场景维护可靠 Skill。这个项目不是单纯的 GitHub 链接合集，也不是默认复制第三方 Skill 的镜像站。

## 已完成

- [x] 搭好教程主线：第 0 课到第 5 课。
- [x] 完成第 1 个可跟做案例：PPT Master Starter。
- [x] 默认使用 Trae 作为普通用户入口。
- [x] 补齐 GitHub 打不开时的备用下载说明。
- [x] 补齐中文命令审核提示词。
- [x] 补齐 PPT 真实需求样例：`inputs/realistic-ppt-brief.md`。
- [x] 补齐 PPT Starter 排错文档。
- [x] 建好基础目录：`tutorial/`、`kits/`、`collections/`、`catalog/`、`docs/`、`templates/`。
- [x] 建好第一个 Skill 卡片：PPT Master。
- [x] 建好写作与办公合集的初版。
- [x] 建好贡献指南、收录标准、评测维度和模板。
- [x] 清理教程里不适合普通读者的网络表述，统一成“GitHub 能不能打开”。
- [x] 清理教程里的具体命令行工具名，统一写成“命令行型 Agent”。

## 上传 GitHub 前

- [x] `.gitignore` 已忽略本地第三方仓库、生成文件、压缩包、编辑器状态、依赖目录和 `.env`。
- [x] 不上传本地 PPT Master 源仓库。
- [x] 不上传生成的 `START_HERE.pdf`。
- [x] 不上传生成的 PPT 输出目录。
- [x] 已检查敏感凭据，没有发现真实密钥。
- [x] 已检查早期旧入口和旧文件名，没有残留。
- [x] 已搜索旧 Trae 地址，没有残留。
- [ ] 选择并添加仓库自己的 `LICENSE`。
- [ ] 创建 GitHub 空仓库。
- [ ] 设置 Git 作者信息。
- [ ] commit 并 push。

## 上传后第一批改进

### 1. 让它更像社区 Skill Hub

- [ ] 把 README 改成双入口：我要学习教程 / 我要浏览 Skill Hub。
- [ ] 新增 `catalog/INDEX.md`，做所有 Skill 的总表。
- [ ] 给 Skill 卡片加 YAML frontmatter，方便以后生成索引。
- [ ] 新增 `.github/ISSUE_TEMPLATE/skill-submission.yml`。
- [ ] 新增 `.github/ISSUE_TEMPLATE/broken-link.yml`。
- [ ] 新增 `.github/pull_request_template.md`。
- [ ] 新增 `docs/review-process.md`，写清楚候选、观察中、推荐、不推荐的流程。
- [ ] 新增 `docs/third-party-policy.md`，写清楚第三方 Skill、备用下载、许可证和镜像边界。

### 2. 扩写 Skill 内容

- [ ] 写作与办公继续补：周报 / 状态更新。
- [ ] 写作与办公继续补：商务邮件改写。
- [ ] 写作与办公继续补：会议纪要整理。
- [ ] 写作与办公继续补：长文档摘要。
- [ ] 写作与办公继续补：表格分析报告。
- [ ] 写作与办公继续补：流程文档 / SOP。
- [ ] 每个场景至少先收 3 个候选，再决定是否写正式卡片。
- [ ] 每个正式推荐 Skill 尽量补一个普通人上手路线。
- [ ] 对复杂 Skill，再考虑做 starter kit。

### 3. 完善教程

- [ ] 第 0 课补一张“你该走哪条路线”的简单表格。
- [ ] 第 1 课根据真实用户试用反馈继续改。
- [ ] 第 2 课补一个完整示例：从需求到找到候选 Skill。
- [ ] 第 3 课补一张 Skill 卡片阅读示例。
- [ ] 第 4 课补一个“周报 Skill”样例文件夹。
- [ ] 第 5 课补 API Key 常见问题和费用提醒。

### 4. 维护和复核

- [ ] 每个 Skill 卡片记录核查日期。
- [ ] 每个 Skill 卡片记录许可证。
- [ ] 每个 Skill 卡片记录是否有 starter。
- [ ] 每月复核一次高优先级 Skill 的链接、stars、版本和维护状态。
- [ ] 对失效或风险变高的条目标记为观察中或不推荐。

## 收录原则提醒

- 不默认复制第三方 Skill 的完整内容。
- 不收录许可证不清的项目作为正式推荐。
- 不收录诱导违规、侵犯隐私、绕过规则的 Skill。
- 不把普通 prompt 包装成高质量 Skill。
- 不鼓励用户公开自己的真实业务经验型 Skill；可以分享框架，真经验先留在本地。
