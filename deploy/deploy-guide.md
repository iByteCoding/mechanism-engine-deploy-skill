# 部署执行说明

## 使用流程

### 1. 选择案例模块
找一个已经集成了目标机制的业务模块作为参考案例。

### 2. 执行生成提示词
将 [skill/prompt.md](../skill/prompt.md) 中的标准提示词模板复制到 AI 对话中，替换以下变量：

| 变量 | 说明 | 示例 |
|------|------|------|
| `{案例模块}` | 已集成机制的参考模块路径 | `@km-news/` |
| `{机制模块}` | 机制能力所在的框架模块路径 | `@mk-sys-category/` |
| `{机制名称}` | 生成的 Skill 名称 | `MK后端分类模板机制` |

### 3. 确认产物结构
生成完成后，校验产物是否符合以下结构：

```
{机制名称}部署/
├── SKILL.md                          ← 必须包含五大章节
└── references/
    ├── ref-00-bundle-spec.md         ← 全局包导入规范
    ├── ref-01-{Entity语义}-spec.md   ← 机制能力型
    └── ref-0N-{能力语义}-spec.md     ← 独立能力型
```

### 4. 核查关键约束

| 检查项 | 预期 |
|--------|------|
| SKILL.md frontmatter | 只含 `name` 和 `description` |
| 案例模块隔离 | references 中无案例模块包名/类名 |
| 代码注释 | 接口方法有 Javadoc，行内注释说明"为什么" |
| ref-00 分组 | 按 JDK / Lombok / Spring / 框架层分组 |
| ref 后缀 | 机制能力用 `-spec`，引擎集成用 `-integration` |

---

## 将 Skill 放入 Trae

生成的 Skill 目录放置路径：

```
.trae/skills/{分类目录}/{机制名称}部署/
```

示例：

```
.trae/skills/MK开发流程/MK后端分类模板机制部署/
```
