# 从这里开始：把业务需求整理成后端接口交接稿

这份文档给已经用过 Trae、跑过第 1 课 PPT starter 的用户看。

这个 starter 对应本项目维护的 Backend API Brief Skill。普通用户不用先安装 Skill，直接复制 `prompts/normal-use.txt` 就可以开始。

你只要完成三件事：

1. 把业务需求放进 `inputs/`。
2. 用 Trae 打开这个文件夹，复制 `prompts/normal-use.txt`。
3. 检查 `outputs/api-explainer.md` 和 `outputs/backend-handoff.md`。

## 第 0 步：确认你打开的是整个文件夹

请用 Trae 打开整个：

```text
backend-api-brief-starter/
```

不要只打开 `START_HERE.md` 这一个文件。

你应该能看到这些目录：

```text
backend-api-brief-starter/
├── START_HERE.md
├── inputs/
├── outputs/
├── prompts/
├── samples/
└── troubleshooting.md
```

## 第 1 步：先用样例跑一次

第一次不要放真实业务材料。

先让 Trae Agent 读取：

```text
samples/sample-api-request.md
```

然后复制：

```text
prompts/normal-use.txt
```

如果它能生成一份小白能看懂的接口说明和一份开发可读的后端交接稿，再换成你的真实材料。

## 第 2 步：准备你的输入

把你的需求写进：

```text
inputs/api-request.md
```

如果这个文件还不存在，就复制 `inputs/put-your-request-here.md`，改名成 `api-request.md`。

需求不用写得像产品文档，可以像这样：

```text
我想做一个成员邀请功能。
项目管理员可以输入邮箱邀请新成员加入项目。
被邀请的人点击邮件里的链接后加入项目。
普通成员不能邀请别人。
我不确定邀请链接多久过期，也不知道要不要支持撤销邀请。
```

## 第 3 步：复制提示词

打开：

```text
prompts/normal-use.txt
```

把里面的内容复制给 Trae Agent。

默认输出路径是：

```text
outputs/api-explainer.md
outputs/backend-handoff.md
```

如果 Trae 没有写文件，只是在聊天框里输出了内容，也可以先看。等内容满意以后，再让它保存到上面两个文件。

## 第 4 步：检查两份文档

生成后，重点看这几件事：

- 有没有编造你没说过的角色、页面、字段、日期、接口或业务规则。
- 有没有把“前端隐藏按钮”当成权限方案。权限必须由后端判断。
- 有没有把需要确认的问题明确列出来。
- 有没有提醒可能需要数据库字段、状态、历史数据处理或兼容性确认。
- 列表、搜索、筛选这类功能有没有提到分页和权限范围。
- 归档、恢复、审批、邀请、重置密码、分享链接这类动作有没有提到重复点击、撤销、过期或失败处理。
- 有没有输出生产 SQL、真实数据库命令、密钥、账号密码等不该出现的内容。
- `api-explainer.md` 是不是普通人能看懂。
- `backend-handoff.md` 是不是可以发给开发同学继续评审。

如果不满意，先不要重写一大段。直接告诉 Trae：

```text
这版编造了输入里没有的信息。请只保留 inputs/ 里明确出现的事实，不确定的内容放到“待确认”。
```

如果输出太技术化，可以追加：

```text
请重写 outputs/api-explainer.md，让没有后端经验的人也能看懂。endpoint、状态码和数据库细节只保留必要解释。
```

如果开发交接稿太空，可以追加：

```text
请补强 outputs/backend-handoff.md：接口清单、权限规则、错误码、数据变更提醒、测试建议和待确认问题都要能让开发继续评审。
```

## 什么材料不要放进来

不要放：

- 客户真实姓名、手机号、邮箱、地址。
- 合同、报价、付款信息。
- 公司未公开财务数据。
- 账号密码、密钥、验证码。
- 内部系统真实地址、生产数据库信息。
- 任何你不确定能不能交给 AI 处理的材料。

可以先把这些信息替换成：

```text
[客户A]
[项目B]
[金额已脱敏]
[内部系统]
[账号信息已脱敏]
```

## 一句话版

如果你只想马上试一下：

1. 用 Trae 打开 `backend-api-brief-starter` 文件夹。
2. 把 `samples/sample-api-request.md` 复制到 `inputs/api-request.md`。
3. 复制 `prompts/normal-use.txt` 给 Trae Agent。
4. 让它生成 `outputs/api-explainer.md` 和 `outputs/backend-handoff.md`。
5. 检查有没有编造、越权和漏掉待确认问题。
