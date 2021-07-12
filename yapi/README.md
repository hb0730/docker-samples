# api管理工具 
<!--[![docker build](https://img.shields.io/badge/docker%20build-passing-brightgreen)](https://hub.docker.com/r/hb0730/yapi)-->
<!--[![docker pulls](https://badgen.net/docker/pulls/hb0730/yapi)](https://hub.docker.com/r/hb0730/yapi)-->
<!--[![docker cloud build](https://img.shields.io/badge/docker%20build-automated-066da5)](https://hub.docker.com/r/hb0730/yapi)-->

# 容器路径

`/home/yapi`

# 获取本镜像
`docker pull hb0730/yapi:targname`

# 编译本镜像
`docker --build -t  yapi .`

# 如何启动本镜像
`docker-compose up -d`

# docker-compose

```dockerfile
version: '2.1'
services:
  yapi:
    image: hb0730/yapi:1.9.3
    container_name: yapi
    restart: always
    ports:
      - 3000:3000
    volumes:
      - ./config.json:/home/yapi/config.json
    networks:
      - yapi-net
```

## config.json

```json
{
 "port": "3000",
 "adminAccount": "",
 "closeRegister": true,
 "versionNotify": true,
 "db": {
   "servername": "",
   "DATABASE": "",
   "port": 27017,
   "user": "",
   "pass": "",
   "authSource": ""
  }
}

```



# hub.docker地址
<https://hub.docker.com/r/hb0730/yapi>

# yapi 源码地址
<https://github.com/YMFE/yapi>

# 版本
 * `hb0730/yapi:1.9.3 ` `hb0730/yapi:latest` --> `yapi 1.9.3`
 * `hb0730/yapi:1.9.2 ` --> `yapi 1.9.2`
 * `hb0730/yapi:1.9.1`  --> `yapi 1.9.1`
 * `hb0730/yapi:1.9.0`  --> `yapi 1.9.0`
 * `hb0730/yapi:1.8.9`  --> `yapi 1.8.9`
 * `hb0730/yapi:1.8.8`  --> `yapi 1.8.8`
 * `hb0730/yapi:1.8.7`  --> `yapi 1.8.7`
 * `hb0730/yapi:1.8.5`  --> `yapi 1.8.5`
 * `hb0730/yapi:1.8.4`  --> `yapi 1.8.4`

# thanks
 * [jinfeijie](https://github.com/jinfeijie/yapi)
