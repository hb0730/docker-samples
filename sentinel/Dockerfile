FROM openjdk:8-jre

MAINTAINER bing_huang <1278032416@qq.com>

USER root

ARG VERSION=1.7.0

ENV BASE_DIR "home/sentinel" 
ENV FILE_NAME "sentinel-dashboard" 
ENV PROJECT_NAME "sentinel-dashboard" 
ENV DASHBOARD_SERVER localhost:8080 
ENV SERVER_PORT 8080 
     
WORKDIR /$BASE_DIR

RUN    mkdir app  
RUN    mkdir bin  
RUN    mkdir /root/logs 
RUN    mkdir /root/logs/csp

COPY docker-entrypoint.sh ./bin/docker-entrypoint.sh

RUN chmod +x ./bin/docker-entrypoint.sh

ADD https://github.com/alibaba/Sentinel/releases/download/${VERSION}/${FILE_NAME}-${VERSION}.jar ./

RUN \cp -f ./${FILE_NAME}-${VERSION}.jar ./app/app.jar

EXPOSE ${SERVER_PORT}

ENTRYPOINT ["bin/docker-entrypoint.sh"]
