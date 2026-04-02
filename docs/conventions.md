# 命名与结构约定速查

## 占位符

| 占位符 | 说明 | 示例 |
|--------|------|------|
| `{Module}` | 类名前缀，大驼峰 | `KmNews` |
| `{module}` | 实体名，小驼峰 | `kmNews` |
| `{模块Key}` | 模块标识，小写+连字符 | `km-news` |
| `{modulePrefix}` | 包名前缀 | `km` |
| `{moduleSuffix}` | 包名后缀 | `news` |

## ref 文件命名

```
ref-{序号}-{语义描述}-{后缀}.md
```

| 后缀 | 适用 | 示例 |
|------|------|------|
| `-spec` | 机制能力型 | `ref-01-category-spec.md` |
| `-integration` | 引擎集成型 | `ref-01-form-integration.md` |

序号 `00` 固定为 `bundle-spec`，业务 ref 从 `01` 起。

## ref 拆分原则

| 情况 | 方式 |
|------|------|
| 有 Entity | 以 Entity 为切入点，覆盖 Entity → VO → API → Repository → Service → Controller |
| 无 Entity | 独立能力单独一个 ref（工具类 / 枚举 / 配置 / i18n） |
