# AI Skills for Everyone TODO

这份 TODO 记录项目现在完成了什么、还缺什么、下一步先做什么。

## 当前定位

**AI Skills for Everyone：面向普通人的开源优质 AI Skill 搜罗库。**

我们按大类和小类搜罗可靠 Skill，每个小类尽量只保留 2 到 3 个推荐位：一个最省心，一个进阶，一个适合改造。教程和 starter 是为了让普通人真的用起来，不是为了堆概念。

## 当前状态

- GitHub 仓库：https://github.com/nameless0120/ai-skills-for-everyone
- 默认分支：`main`
- 当前已完成第一次上传。
- 仓库已有 `LICENSE`。
- 第一条完整样例：PPT Master。
- 当前策略已改成“精选 Skill Hub + 教程入口”。

## 已完成

### 教程主线

- [x] 第 0 课：先选你的路线。
- [x] 第 1 课：用开源 PPT Skill 生成可编辑 PPT。
- [x] 第 2 课：用 Trae 安装已知 Skill，再按需求找到新 Skill。
- [x] 第 3 课：使用我们维护的 Skill 库。
- [x] 第 4 课：把自己的重复工作搓成 Skill。
- [x] 第 5 课：Agent 使用进阶。

### PPT Master Starter

- [x] 完成 `kits/ppt-master-starter/`。
- [x] 补齐 `START_HERE.md`。
- [x] 补齐 `DOWNLOADS.md`。
- [x] 补齐 `troubleshooting.md`。
- [x] 补齐 `inputs/realistic-ppt-brief.md` 真实需求样例。
- [x] 补齐可复制提示词：`bootstrap-env.txt`、`normal-use.txt`、`command-review.txt`。
- [x] 补齐 Windows 和 macOS/Linux 环境检查脚本。
- [x] 统一使用“GitHub 能不能打开”的表述。
- [x] 不上传生成的 PPT、PDF、压缩包和本地第三方仓库。

### Skill 库骨架

- [x] 建好 `catalog/`。
- [x] 建好 `collections/`。
- [x] 建好 `templates/`。
- [x] 建好 `reviews/`。
- [x] 建好 `sources/`。
- [x] 建好第一个 Skill 卡片：PPT Master。
- [x] 建好写作与办公合集初版。

### 社区和维护基础

- [x] 建好 `CONTRIBUTING.md`。
- [x] 建好收录标准：`docs/curation-guide.md`。
- [x] 建好评测维度：`docs/review-rubric.md`。
- [x] 建好 Skill 卡片、合集、评测、上手教程模板。
- [x] 建好 `.gitignore`，忽略本地输出、编辑器状态、依赖目录和 `.env`。
- [x] 完成第一次 commit 和 push。

## 还缺什么

### 1. 让它更像社区 Skill Hub

- [x] README 改成“教程入口 + Skill Hub 入口”。
- [x] 新增 `catalog/INDEX.md`，做所有 Skill 的总表。
- [x] 定下每个小类的 2 到 3 个推荐位：最省心 / 进阶 / 可改造。
- [x] 给 Skill 卡片加 YAML frontmatter，方便以后生成索引。
- [x] 新增 `.github/ISSUE_TEMPLATE/skill-submission.yml`。
- [x] 新增 `.github/ISSUE_TEMPLATE/broken-link.yml`。
- [x] 新增 `.github/pull_request_template.md`。
- [x] 新增 `docs/review-process.md`，写清楚候选、观察中、推荐、不推荐的流程。
- [x] 新增 `docs/third-party-policy.md`，写清楚第三方 Skill、备用下载、许可证和镜像边界。

### 2. 扩写 Skill 内容

- [x] 先把写作与办公拆成小类推荐位表，每个小类明确缺哪个位置。
- [ ] 写作与办公继续补：周报 / 状态更新。
- [ ] 写作与办公继续补：商务邮件改写。
- [ ] 写作与办公继续补：会议纪要整理。
- [ ] 写作与办公继续补：长文档摘要。
- [ ] 写作与办公继续补：表格分析报告。
- [ ] 写作与办公继续补：流程文档 / SOP。
- [ ] 每个小类至少先收 3 个候选，再决定谁进“最省心 / 进阶 / 可改造”。
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

## 近期优先级

1. 写第二个 Skill 卡片，优先从写作与办公里选。
2. 给每个小类先补 3 个候选来源，再筛成推荐位。
3. 第 0 课补一张“你该走哪条路线”的简单表格。
4. 第 3 课补一张 Skill 卡片阅读示例。
5. 第 4 课补一个“周报 Skill”样例文件夹。

## 收录原则提醒

- 不默认复制第三方 Skill 的完整内容。
- 不收录许可证不清的项目作为正式推荐。
- 不收录诱导违规、侵犯隐私、绕过规则的 Skill。
- 不把普通 prompt 包装成高质量 Skill。
- 不鼓励用户公开自己的真实业务经验型 Skill；可以分享框架，真经验先留在本地。
