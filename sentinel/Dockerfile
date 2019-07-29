FROM openjdk:8-jre

MAINTAINER bing_huang <1278032416@qq.com>

ENV FILE_NAME=sentinel-dashboard \
	VERSION=1.6.2 \
    PORT=8080 

#alibaba sentinel dashboard
RUN mkdir /usr/local/sentinel

WORKDIR /user/local/sentinel

ADD https://github.com/alibaba/Sentinel/releases/download/${VERSION}/${FILE_NAME}-${VERSION}.jar ./

#app.jar

RUN mkdir /app

RUN \cp -f ./${FILE_NAME}-${VERSION}.jar /app/app.jar

WORKDIR /

ENTRYPOINT ["java","-Dserver.port=8080","-Dcsp.sentinel.dashboard.server=localhost:8080","-Dproject.name=sentinel-dashboard","-jar","/app/app.jar"]

EXPOSE 8080