# Backend API Brief 试跑：邀请成员加入团队

## 测试目标

验证 `skills/backend-api-brief/SKILL.md` 在“邀请成员加入团队”这种更接近真实 SaaS 的后端需求里，能否保持小白可读，同时给开发足够明确的接口、权限、状态和风险提醒。

## 输入

- [小白原始需求](inputs/api-request.md)

## 输出

- [给自己看的接口说明](outputs/api-explainer.md)
- [后端开发交接稿](outputs/backend-handoff.md)

## 初步观察

- 两份文档结构清楚，小白文档能解释“邀请不是只发邮件”，开发文档能落到接口、状态、数据表和测试点。
- 这个 case 暴露出邀请类功能的特殊风险：token、邮件失败、重复邀请、未注册用户、角色越权。
- 当前 Skill 可以产出可用交接稿；这次也把“外部链接 / 邮件 / token 类功能”的风险提醒补进了 Skill。
