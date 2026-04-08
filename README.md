# mechanism-engine-deploy-skill

将业务模块中已集成的机制能力（如表单引擎、附件机制、分类机制等）提炼为可复用 Skill，便于在其他模块中快速集成。

---

## 使用方式

复制 [skill/skill-gen-prompt.md](skill/skill-gen-prompt.md) 中的标准提示词模板，替换以下变量后发送给 AI：

| 变量 | 说明 | 示例 |
|------|------|------|
| `{案例模块}` | 已集成该机制的参考模块 | `@km-news/` |
| `{机制模块}` | 机制能力所在的框架模块 | `@mk-sys-category/` |
| `{机制名称}` | 生成的 Skill 名称 | `MK后端分类模板机制` |

---

## 目录结构

```
mechanism-engine-deploy-skill/
├── skill/
│   ├── skill-gen-prompt.md          # 核心：Skill 生成提示词（含模板）
│   └── references/
│       ├── ref-00-conventions.md    # 命名约定、拆分原则、内部结构规范
│       └── ref-01-catalog.md        # 机制类型分类与已收录清单
└── README.md
```

---

## 生成产物结构

```
{机制名称}部署/
├── SKILL.md
└── references/
    ├── ref-00-bundle-spec.md            ← 全局包导入规范（所有 ref 均须遵守）
    ├── ref-01-{Entity语义}-spec.md      ← 机制能力型（Entity + 全栈）
    ├── ref-02-{Entity语义}-integration.md  ← 引擎集成型（Entity + 全栈）
    └── ref-0N-{能力语义}-spec.md        ← 无 Entity 的独立能力
```

