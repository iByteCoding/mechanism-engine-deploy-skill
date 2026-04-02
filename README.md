# mechanism-engine-deploy-skill

将业务模块中已集成的机制能力（如表单引擎、附件机制、分类机制等）提炼为可复用 Skill，便于在其他模块中快速集成。

---

## 使用方式

复制 [skill/prompt.md](skill/prompt.md) 中的标准提示词模板，替换 `{案例模块}`、`{机制模块}`、`{机制名称}` 后发送给 AI 即可。

---

## 目录结构

```
mechanism-engine-deploy-skill/
├── skill/
│   ├── prompt.md                   # 核心：生成提示词（含模板 + 约束说明）
│   ├── prompt-mindmap.md           # 提示词脑图结构版
│   └── skill-template/             # Skill 输出物结构模板
│       ├── SKILL.md.tpl
│       └── references/
│           └── ref-00-bundle-spec.md.tpl
├── docs/
│   └── conventions.md              # 命名与结构约定速查
└── mechanism/
    └── mechanism-meta.md           # 机制类型分类与已收录清单
```
