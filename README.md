
# Java-三级项目-CRUD操作-demo

别忘了改学号和姓名 = =

## 前置条件

### 运行环境

> ➜ java --version

openjdk 21.0.2 2024-01-16
OpenJDK Runtime Environment (build 21.0.2+13-58)
OpenJDK 64-Bit Server VM (build 21.0.2+13-58, mixed mode, sharing)

> ➜ javac --version

javac 21.0.2

> mysql

DBMS: MySQL (ver. 8.0.33)
Case sensitivity: plain=exact, delimited=exact
Driver: MySQL Connector/J (ver. mysql-connector-j-8.2.0 (Revision: 06a1f724497fd81c6a659131fda822c9e5085b6c), JDBC4.2)

### 数据库

数据库导出文件在项目根目录下的`sql`文件夹中，路径`src/sql/`，文件名为`springbootdata.sql`。

你可以使用`Navicat`或者`MySQL Workbench`等工具导入数据库。(都不太建议。建议直接使用命令行导入)

```shell
mysql -u root -p springbootdata < springbootdata.sql
```

## 配置

### 数据库配置

在`src/main/resources/application.properties`中配置数据库连接信息。

```properties
spring.datasource.url=jdbc:mysql://your_own_database_addr:3306/springbootdata?useSSL=false&serverTimezone=UTC
spring.datasource.username=springbootdata
spring.datasource.password=passwd
```
上述这几个地方改成你的数据库地址、用户名和密码。(什么？你不知道自己的数据库地址、数据库名，或者用户名和密码？那我无话可说)

## 运行

http://localhost:8081/posts/

> 注意：这里的`8081`是我自己配置的端口号，你可以在`src/main/resources/application.properties`中修改`server.port`的值来更改端口号。