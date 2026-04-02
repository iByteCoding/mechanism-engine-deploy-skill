# 全局包导入规范

> 本文件定义了该 Skill 所有 ref 文件涉及的跨模块包导入规范，所有其他 ref 文件均须遵守。

---

## JDK/标准库

```java
import java.util.*;
import java.time.*;
import java.io.*;
```

## Lombok

```java
import lombok.*;
import lombok.extern.slf4j.Slf4j;
```

## Hutool

```java
import cn.hutool.core.util.*;
import cn.hutool.core.collection.*;
```

## Spring Framework

```java
import org.springframework.stereotype.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.transaction.annotation.*;
```

## Swagger

```java
import io.swagger.annotations.*;
import io.swagger.v3.oas.annotations.*;
import io.swagger.v3.oas.annotations.tags.*;
```

## 框架基础层

```java
import com.{company}.framework.core.*;
import com.{company}.framework.common.*;
```

## 框架业务层

```java
import com.{company}.framework.biz.*;
```

---

## 注意事项

- ref 文件内代码块只保留本机制新建类的自模块导入
- 跨模块包导入统一在此文件声明
- 新增依赖时需更新此文件
