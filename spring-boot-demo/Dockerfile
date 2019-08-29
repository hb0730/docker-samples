FROM openjdk:8-jre

MAINTAINER bing_huang <1278032416@qq.com>

RUN mkdir /app

ENV SPRING_PROFILES_ACTIVE="test" 

COPY xxx-0.0.1-SNAPSHOT.jar  /app/app.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Duser.timezone=GMT+08", "-jar","/app/app.jar","--spring.profiles.active=${SPRING_PROFILES_ACTIVE}"]
