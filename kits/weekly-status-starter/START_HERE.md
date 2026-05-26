# 从这里开始：把零散记录整理成周报

这份文档给已经用过 Trae、跑过第 1 课 PPT starter 的用户看。

这个 starter 对应本项目维护的 Weekly Status Skill。普通用户不用先安装 Skill，直接复制 `prompts/normal-use.txt` 就可以开始。

你只要完成三件事：

1. 把本周零散记录放进 `inputs/`。
2. 用 Trae 打开这个文件夹，复制 `prompts/normal-use.txt`。
3. 检查 `outputs/leader-summary.md` 和 `outputs/weekly-report.md`。

## 第 0 步：确认你打开的是整个文件夹

请用 Trae 打开整个：

```text
weekly-status-starter/
```

不要只打开 `START_HERE.md` 这一个文件。

你应该能看到这些目录：

```text
weekly-status-starter/
├── START_HERE.md
├── inputs/
├── outputs/
├── prompts/
├── samples/
└── troubleshooting.md
```

## 第 1 步：先用样例跑一次

第一次不要放正式工作记录。

先让 Trae Agent 读取：

```text
samples/sample-weekly-notes.md
```

然后复制：

```text
prompts/normal-use.txt
```

如果它能生成一份带“当前状态”的领导版摘要和一份完整周报，再换成你的真实材料。

## 第 2 步：准备你的输入

把你的零散记录写进：

```text
inputs/weekly-notes.md
```

如果这个文件还不存在，就复制 `inputs/put-your-notes-here.md`，改名成 `weekly-notes.md`。

记录不用写得很正式，可以像这样：

```text
周一：跟产品确认客服工单分类口径。
周二：整理 300 条历史工单，发现退款、物流、账号三类最多。
周三：测试自动分类，退款类效果还可以，账号类经常错。
问题：缺少一些历史标注，客服组这周比较忙。
下周：继续补标注，准备给主管看一个小样。
```

## 第 3 步：复制提示词

打开：

```text
prompts/normal-use.txt
```

把里面的内容复制给 Trae Agent。

默认输出路径是：

```text
outputs/leader-summary.md
outputs/weekly-report.md
```

如果 Trae 没有写文件，只是在聊天框里输出了内容，也可以先用。等内容满意以后，再让它保存到上面两个文件。

## 第 4 步：检查周报

周报生成后，重点看这几件事：

- 有没有编造你没写过的进展。
- 有没有把“正在做”和“已经完成”混在一起。
- `leader-summary.md` 是不是足够短，能让领导快速扫完。
- `weekly-report.md` 是不是先给结论，再展开进展和明细。
- 风险有没有写出影响和下一步处理方式。
- 下周计划是不是具体。
- 需要协作的事项有没有写清楚对象和期望结果。
- 语气是不是适合发给直属领导或项目负责人。
- 有没有太随意、太邀功，或者把问题写成甩锅。
- 有没有泄露客户名、金额、账号、内部系统名。

如果不满意，先不要重新写一大段。直接告诉 Trae：

```text
这版太像模板了。请保留事实不变，把语气改得更自然，减少套话。
```

如果语气不适合给领导看，可以追加：

```text
请把这版改成适合发给直属领导看的周报：先说当前状态和本周结论，再写关键进展、风险影响、下周动作和需要支持的事项，不要太口语，也不要显得邀功。
```

或者：

```text
这版有编造。请只保留 inputs/ 里明确出现的信息，不确定的内容放到“待确认”。
```

## 什么材料不要放进来

不要放：

- 客户真实姓名、手机号、邮箱、地址。
- 合同、报价、付款信息。
- 公司未公开财务数据。
- 账号密码、密钥、验证码。
- 任何你不确定能不能交给 AI 处理的材料。

可以先把这些信息替换成：

```text
[客户A]
[项目B]
[金额已脱敏]
[内部系统]
```

## 一句话版

如果你只想马上试一下：

1. 用 Trae 打开 `weekly-status-starter` 文件夹。
2. 把 `samples/sample-weekly-notes.md` 复制到 `inputs/weekly-notes.md`。
3. 复制 `prompts/normal-use.txt` 给 Trae Agent。
4. 让它生成 `outputs/leader-summary.md` 和 `outputs/weekly-report.md`。
5. 检查有没有编造、遗漏和套话。
