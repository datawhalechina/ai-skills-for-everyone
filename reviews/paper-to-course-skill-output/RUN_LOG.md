# Paper-to-Course Skill 试跑记录

## 本地 Skill 来源

| Skill | 本地仓库 | 说明 |
| --- | --- | --- |
| `paper-to-course` | `.agents/tmp/paper-to-course` | `KaguraTart/paper-to-course` 浅克隆，MIT |

## Case 1：Attention Is All You Need

输入论文：`Attention Is All You Need`，使用已有公开 PDF / 文本理解材料生成一个小型课程烟测。

输出目录：

```text
reviews/paper-to-course-skill-output/attention-is-all-you-need/
```

生成结果：

| 输出 | 文件 | 状态 |
| --- | --- | --- |
| HTML 课程 | `index.html` | 成功 |
| Markdown 文档 | `README.md` | 成功 |
| PPTX 汇报 | `slides.pptx` | 成功，9 页 |
| 模块 HTML | `modules/module-01.html` 到 `module-06.html` | 成功 |

构建命令：

```powershell
node .agents\tmp\paper-to-course\scripts\build-all.js reviews\paper-to-course-skill-output\attention-is-all-you-need
```

## 发现的问题

- `build-all.js` 里有 `ensureReferences()`，但主流程没有调用；测试时需要提前复制 `_base.html`、`_footer.html`、`styles.css`、`main.js`。
- README / SKILL 提到 `build.sh`，但仓库里没有这个文件；真实可用入口是 `scripts/build-all.js`。
- `slides.pptx` 需要 `pptxgenjs`。本次用 `npm.cmd install pptxgenjs --no-save` 安装到临时 skill clone 内。
- Markdown 转换可用，但格式有不少空行，适合作为降级文本，不适合作为最终精修笔记。

## 初步结论

Paper-to-Course 的方向适合“小白论文阅读”入口：给一篇论文，输出离线课程、Markdown 和 PPTX，比 ScholarFlow 和 Oh My Paper 更轻。  
但它还不能直接写成最省心正式推荐，需要补一个 starter，把依赖安装、模板复制、输入输出目录和检查清单包起来。
