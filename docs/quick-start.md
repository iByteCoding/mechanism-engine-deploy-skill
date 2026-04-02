# 快速上手

## 前置条件

- 已有一个集成了目标机制的业务模块（作为案例参考）
- 目标机制的框架模块已在工程中存在

---

## 三步生成一个机制 Skill

### Step 1：复制提示词

打开 [skill/prompt.md](../skill/prompt.md)，复制"标准提示词模板"内容。

### Step 2：填入变量，发送给 AI

```
在 @{案例模块}/ 中已部署 @{机制模块}/，需要完成以下任务（需要的权限直接获取）：
...
```

替换 `{案例模块}`、`{机制模块}`、`{机制名称}` 三个变量后发送。

### Step 3：核查产物

参见 [deploy/deploy-guide.md](../deploy/deploy-guide.md) 中的核查清单。

---

## 生成产物示例

参考已有案例：`MK后端分类模板机制部署/`

```
MK后端分类模板机制部署/
├── SKILL.md
└── references/
    ├── ref-00-bundle-spec.md
    ├── ref-01-category-spec.md
    ├── ref-02-template-spec.md
    └── ref-03-main-spec.md
```
