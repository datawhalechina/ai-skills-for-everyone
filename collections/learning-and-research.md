# 学习与研究

这个合集收录用于学习计划、资料整理、论文阅读、知识卡片和复习的开源 Skill。

## 常见任务

- 把一个主题拆成学习路线。
- 整理论文、报告或长文。
- 生成知识卡片和复习题。
- 对比多个资料来源。
- 把阅读笔记整理成结构化输出。

## 搜索关键词

- `research assistant agent workflow`
- `paper reading ai skill`
- `study plan prompt pack`
- `knowledge card llm workflow`
- `literature review agent`
- `academic reading assistant`

## 小类推荐位

每个小类最终尽量只留 2 到 3 个正式推荐：一个最省心，一个进阶，一个适合改造。学习与研究类先从“论文阅读”开始补位，小白入口仍继续搜罗。

| 小类 | 最省心 | 进阶 | 可改造 | 状态 |
| --- | --- | --- | --- | --- |
| 资料整理 | 待搜罗 | 待搜罗 | 待搜罗 | 待补 |
| 论文阅读 | [Paper-to-Course](../catalog/learning-and-research/paper-to-course.md) | [Oh My Paper](https://github.com/LigphiDonk/Oh-my--paper) | [ScholarFlow](../catalog/learning-and-research/scholarflow.md) | 已完成本地试跑，适合作为小白论文入门入口 |
| 知识卡片 | 待搜罗 | 待搜罗 | 待搜罗 | 待补 |
| 复习计划 | 待搜罗 | 待搜罗 | 待搜罗 | 待补 |

## 论文阅读推荐位说明

论文阅读不要只按“功能最多”排序。这个场景里，用户差异很大：

- **小白入门**：需要一个简单路线，能读一篇 PDF、保留来源、生成清楚笔记就够了。[Paper-to-Course](../catalog/learning-and-research/paper-to-course.md) 的输入是单篇 PDF，输出是离线 HTML 课程、Markdown 和 PPTX，比完整论文库更像第一步，已经完成本地试跑。
- **进阶研究**：适合放 [Oh My Paper](https://github.com/LigphiDonk/Oh-my--paper) 这类完整科研流水线。它覆盖文献、实验、写作、审稿等阶段，但不适合作为第一次接触 Skill 的入口。
- **可改造模板**：适合放 [ScholarFlow](../catalog/learning-and-research/scholarflow.md)。它不是最省心的入门路线，但目录结构、中文提示、论文推荐、精读笔记和 Obsidian 输出都很适合二次改造。

## 筛选重点

- 要能保留来源和引用信息。
- 不能把摘要写成未经核查的事实。
- 最好支持长文、PDF 或链接材料。
- 需要区分“原文说了什么”和“模型推测了什么”。
- 论文类 Skill 如果会下载 PDF、联网检索或写入本地知识库，要额外检查 Python 环境、证书、输出目录和隐私边界。
