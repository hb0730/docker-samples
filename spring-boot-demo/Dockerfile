##该镜像基于openjdk8 
FROM openjdk:8-jre

MAINTAINER bing_huang <1278032416@qq.com>

RUN mkdir /app
##说明 SPRING_PROFILES_ACTIVE 环境变量 BASE_DIR基本路径 RMI_HOSTNAME 远程监控
ENV SPRING_PROFILES_ACTIVE="test" \
    BASE_DIR="/app" \
    RMI_HOSTNAME=172.16.107.86\
    RMI_PORT=1099\
    RMI_AUTHENTICATE=false\
    RMI_SSL=false \
    JAR_NAME=TEST\
    JAVA_OPTS="-server -Xms2048m -Xmx2048m -Xmn512m -XX:MaxMetaspaceSize=512m"

COPY xxx.jar  /app/app.jar

WORKDIR /$BASE_DIR

RUN mkdir /app/bin

ADD docker-entrypoint.sh bin/docker-entrypoint.sh

RUN chmod +x bin/docker-entrypoint.sh

EXPOSE 8080
EXPOSE 1099
ENTRYPOINT ["bin/docker-entrypoint.sh"]