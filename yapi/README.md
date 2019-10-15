# yapi api管理工具 

# 用户
 默认密码为`ymfe.org`
 # 可修改参数
 |环境变量|默认值|说明|
|----|----|---|
|VERSION|1.8.4|yapi版本|
|HOME|/home|安装路径|
|PORT|3000|端口|
|ADMIN_EMAIL|1278032416@qq.com|管理mail|
|DB_SERVER|mongo(127.0.0.1)	|MongoDB地址|
|DB_NAME|yapi|数据库|
|DB_PORT|27017 |MongoDB端口|
|DB_USER|root|MongoDB用户|
|DB_PASS|Admin123|MongoDB用户密码|
|DB_AUTH|admin|MongoDB用户角色|

# 获取本镜像
`docker pull hb0730/yapi:targname`
# 编译本镜像
`docker --build-arg VERSION=1.8.4 -t  yapi .`
# 如何启动本镜像
`docker-compose up -d`
# hub.docker地址
<https://hub.docker.com/r/hb0730/yapi>

# yapi 源码地址
<https://github.com/YMFE/yapi>

# 版本
 * `1.8.4` `latest` --->`yapi 1.8.4`