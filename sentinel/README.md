# alibaba-Sentinel dashboard
[![docker build](https://img.shields.io/badge/docker%20build-passing-brightgreen)](https://hub.docker.com/r/hb0730/alibaba-sentinel)
[![docker pull](https://badgen.net/docker/pulls/hb0730/alibaba-sentinel)](https://hub.docker.com/r/hb0730/alibaba-sentinel)
[![docker cloud status](https://img.shields.io/badge/docker%20build-automated-066da5)](https://hub.docker.com/r/hb0730/alibaba-sentinel)

采用阿里巴巴 sentinel 控制台 最新版本
基于openjdk:8-jre
使用 https://github.com/alibaba/Sentinel/releases 提供的jar
# 如何使用 build
 `build.sh` 有两个子命令 `generate` `build`
 ## `generate` 生成Dockerfile
	`./build.sh generate version` 
 ## `build` 用于构建docker image
	`./build.sh build image_name file_local`
# 版本说明
 * `1.7.1`,`latest` --> `alibaba sentinel 1.7.0`
 * `1.7.0` --> `alibaba sentinel 1.7.0`
   + application.properties url `/home/sentinel/app/application.properties`
   + remove surplus ENV
 * `1.6.3` --> `alibaba sentinel 1.6.3`
 * `1.0.0` --> `alibab sentinel 1.6.2`
