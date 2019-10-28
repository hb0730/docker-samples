# mysql

# docker-compose 说明
该docker-compose.yml 默认安装了web图形化界面`adminer`<br>
root密码`MYSQL_ROOT_PASSWORD`为`Admin123` <br>
# my.cnf
docker 版的mysql默认没有`my.cnf`<br>
## 如何挂载my.cnf
MySQL的默认配置可以在中找到`/etc/mysql/my.cnf`，其中可以包含!includedir其他目录，例如`/etc/mysql/conf.d`或`/etc/mysql/mysql.conf.d`。请检查mysql映像本身中的相关文件和目录以获取更多详细信息<br>
# 初始化
首次启动容器时，将创建一个具有指定名称的新数据库，并使用提供的配置变量对其进行初始化.<br>
此外，它会执行文件（可扩展）.sh，.sql并且.sql.gz是在发现/docker-entrypoint-initdb.d。文件将按字母顺序执行。<br>
您可以mysql通过将SQL转储装载到该目录中并为自定义图像提供贡献的数据来轻松填充服务。<br>
默认情况下，SQL文件将导入到MYSQL_DATABASE变量指定的数据库中<br>
# 存储位置
`/my/own/datadir:/var/lib/mysql`
# 官方文档
<https://hub.docker.com/_/mysql>