# mechanism-engine-deploy-skill

当某个业务模块中已集成了某种机制能力（如表单引擎、附件机制、审批流程等），需要将其提炼为可复用 Skill 时使用，以方便在其他模块中便捷集成该机制。

---

## 目录结构

```
mechanism-engine-deploy-skill/
├── README.md                     # 项目说明
├── .gitignore
├── skill/                        # Skill 主体、提示词、配置
│   ├── prompt.md                 # 标准生成提示词（含模板 + 约束说明）
│   ├── prompt-mindmap.md         # 提示词脑图结构版
│   └── skill-template/           # Skill 输出物模板
│       ├── SKILL.md.tpl          # SKILL.md 章节结构模板
│       └── references/
│           └── ref-00-bundle-spec.md.tpl  # 包导入规范模板
├── deploy/                       # 部署脚本、集成脚本
│   └── deploy-guide.md           # 部署执行说明
├── mechanism/                    # 机制元数据定义
│   └── mechanism-meta.md         # 机制类型定义与分类说明
└── docs/                         # 使用说明、集成文档
    ├── quick-start.md            # 快速上手
    └── conventions.md            # 命名与结构约定
```

---

## 快速上手

参见 [docs/quick-start.md](docs/quick-start.md)

## 命名约定

参见 [docs/conventions.md](docs/conventions.md)

## 机制类型说明

参见 [mechanism/mechanism-meta.md](mechanism/mechanism-meta.md)
