# alibaba-Sentinel dashboard
[![docker build](https://img.shields.io/badge/docker%20build-passing-brightgreen)](https://hub.docker.com/r/hb0730/alibaba-sentinel)
[![docker pull](https://badgen.net/docker/pulls/hb0730/alibaba-sentinel)](https://hub.docker.com/r/hb0730/alibaba-sentinel)
[![docker cloud status](https://img.shields.io/badge/docker%20build-automated-066da5)](https://hub.docker.com/r/hb0730/alibaba-sentinel)

采用阿里巴巴 sentinel 控制台 最新版本
基于openjdk:8-jre
使用 https://github.com/alibaba/Sentinel/releases 提供的jar

# volumes挂载说明
**注意**使用`hb0730/alibaba-sentinel:1.70 +` 镜像必须挂载`application.properties`,否则启动失败 

# docker-compose
```
version: '3.1'
services:
   sentinel:
      image: hb0730/alibaba-sentinel
      restart: always
      container_name: sentinel
      volumes:
        - ./logs:/root/logs
        - ./config:/home/sentinel/config
      ports:
        - '8408:8080'
```

# application.properties
```
#spring settings
spring.http.encoding.force=true
spring.http.encoding.charset=UTF-8
spring.http.encoding.enabled=true

#logging settings
logging.level.org.springframework.web=INFO
logging.file=${user.home}/logs/csp/sentinel-dashboard.log
logging.pattern.file= %d{yyyy-MM-dd HH:mm:ss} [%thread] %-5level %logger{36} - %msg%n
#logging.pattern.console= %d{yyyy-MM-dd HH:mm:ss} [%thread] %-5level %logger{36} - %msg%n

#auth settings
auth.filter.exclude-urls=/,/auth/login,/auth/logout,/registry/machine,/version
auth.filter.exclude-url-suffixes=htm,html,js,css,map,ico,ttf,woff,png
# If auth.enabled=false, Sentinel console disable login
auth.username=sentinel
auth.password=sentinel

# Inject the dashboard version. It's required to enable
# filtering in pom.xml for this resource file.
```

# 如何使用 build
 `build.sh` 有两个子命令 `generate` `build`
 ## `generate` 生成Dockerfile
	`./build.sh generate version`
 ## `build` 用于构建docker image
	`./build.sh build image_name file_local`

# 版本说明
 * `hb0730/alibaba-sentinel:1.7.1`,`hb0730/alibaba-sentinel:latest` --> `alibaba sentinel 1.7.0`
 * `hb0730/alibaba-sentinel:1.7.0` --> `alibaba sentinel 1.7.0`
   + application.properties url `/home/sentinel/app/application.properties`
   + remove surplus ENV
 * `hb0730/alibaba-sentinel:1.6.3` --> `alibaba sentinel 1.6.3`
 * `hb0730/alibaba-sentinel:1.0.0` --> `alibab sentinel 1.6.2`

# url 
* [hb0730-github](https://github.com/hb0730/docker)
* [sentinel](https://github.com/alibaba/Sentinel)
* [hb0730/alibaba-sentinel](https://hub.docker.com/r/hb0730/alibaba-sentinel)

# thanks
* [sentinel](https://github.com/alibaba/Sentinel)