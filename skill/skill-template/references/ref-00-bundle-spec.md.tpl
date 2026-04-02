# 包导入规范（ref-00）

> 本文档集中声明所有跨模块包的标准导入。**所有 ref 文件均须遵守本规范**。
> 各 ref 只需在代码块中保留本机制新建类的自模块导入；所有来自外部模块的类，以本文档为准。

---

## 一、JDK / 标准库

```java
import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.*;
```

---

## 二、Lombok

```java
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
```

---

## 三、Hutool

```java
import cn.hutool.core.collection.CollUtil;
import cn.hutool.core.util.StrUtil;
```

---

## 四、Spring Framework

```java
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
```

---

## 五、Swagger

```java
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
```

---

## 六、Landray Common（框架基础层）

```java
// 基础实体 / VO
import com.landray.common.core.entity.AbstractEntity;
import com.landray.common.core.dto.AbstractVO;
import com.landray.common.core.dto.IdVO;
import com.landray.common.core.dto.QueryRequest;
import com.landray.common.core.dto.QueryResult;
import com.landray.common.core.dto.Response;

// Repository / Service 基类
import com.landray.common.core.repository.IRepository;
import com.landray.common.core.service.AbstractServiceImpl;

// 元数据注解
import com.landray.common.core.annotation.MetaEntity;
import com.landray.common.core.annotation.MetaProperty;

// 异常
import com.landray.common.exception.KmssRuntimeException;
```

---

## 七、Landray Sys Auth（权限层）

```java
// 按需引入
import com.landray.sys.auth.data.field.FdCreator;
import com.landray.sys.auth.data.field.FdAlter;
```

---

## 八、Landray Web（MVC 基类）

```java
import com.landray.web.controller.AbstractController;
import com.landray.web.controller.CombineController;
import com.landray.web.api.IApi;
```

---

## 九、{机制专属模块}（按机制补充）

```java
// 在此补充该机制涉及的框架包导入
```
