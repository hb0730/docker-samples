# halo
Halo是一种现代化的个人独立博客系统，给习惯写博客的同学多一个选择。
# 如何使用 hb0730/halo
`hb0730/halo` 只为动态支持数据h2与mysql的切换而但是<br>
docker地址 <https://hub.docker.com/r/hb0730/halo>
# docker-compose 说明
## volumes挂载说明
* `/home/halo/logs` halo日志
* `/home/halo/conf` application.properties *注意默认是h2,如果不需要更则无需挂载,且默认挂载为官方挂载方式 `/home/halo`*
* `/home/halo/plugins/mysql ` 为数据库驱动 兼容版本问题

# 版本
`1.1.1` -> `halo 1.1.1`
`latest` -> `halo 1.1.1`
