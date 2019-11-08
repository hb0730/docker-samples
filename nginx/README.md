# nginx-compose
## volumes 挂载说明
+ `./mnt` 为nginx默认的html
+ `./conf/conf.d`为nginx的`/etc/nginx/conf.d`
+ `./conf/nginx.conf` 为 nginx中的配置**该配置为文件配置,如挂载必须存在，否则启动报错**
+ `/log` 为nginx的日志
+ `./cert` 为nginx的ssl存在位置**配合 nginx.conf**