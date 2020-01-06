# halo
Halo是一种现代化的个人独立博客系统，给习惯写博客的同学多一个选择。
# `hb0730/halo`特性
`hb0730/halo` 只为动态支持数据h2与mysql的切换
# 环境变量说明
|环境变量|默认值|说明|
|----|----|---|
|VIRTUAL_PORT|8090|开发端口|
|VIRTUAL_HOST|blog.hb0730.com|监听的地址（务必修改）|
|LETSENCRYPT_HOST|blog.hb0730.com|证书的域名 （务必修改）|
|LETSENCRYPT_EMAIL|1278032416@qq.com|证书所有者的邮箱，快过期时会提醒（务必修改）|
|MAX_UPLOAD_SIZE|10m||
|JVM_XMS|256m||
|JVM_XMX|256m||
# volumes挂载说明
**注意,`hb730/halo`不同之处**
* `/home/halo/logs` halo日志
* `/home/halo/conf`为 application.properties **如果不需要挂载：启动则使默认用h2,这里就可以做到h2与mysql的切换**
* `/home/halo/plugins/mysql ` 为mysql 驱动包挂载处，用于兼容不同mysql版本
# application.properties 案例
```
server.port=8090
server.use-forward-headers=true
server.compression.enabled=false
server.compression.mime-types=application/javascript,text/css,application/json,application/xml,text/html,text/xml,text/plain
spring.jackson.date-format=yyyy-MM-dd HH:mm:ss
spring.devtools.add-properties=false
spring.output.ansi.enabled=always
spring.datasource.type=com.zaxxer.hikari.HikariDataSource
spring.datasource.driver-class-name=org.h2.Driver
spring.datasource.url=jdbc:h2:file:~/.halo/db/halo
spring.datasource.username=admin
spring.datasource.password=123456
#spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
#spring.datasource.url=jdbc:mysql://xxxx:3306/halodb?characterEncoding=utf8&useSSL=false&serverTimezone=Asia/Shanghai
spring.h2.console.settings.web-allow-others=false
spring.h2.console.path=/h2-console
spring.h2.console.enabled=false
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=false
spring.jpa.open-in-view=false
spring.servlet.multipart.max-file-size=10240MB
spring.servlet.multipart.max-request-size=10240MB
spring.mvc.favicon.enabled=false
logging.level.run.halo.app=INFO
logging.path=${user.home}/.halo/logs
```
# 版本
* `latest` `1.2.0` -> `halo 1.2.0`
* `1.1.1` -> `halo 1.1.1`
# docker 地址
<https://hub.docker.com/r/hb0730/halo>
# 源码
<https://github.com/halo-dev/halo>
# thanks
 [halo](https://github.com/halo-dev/halo)