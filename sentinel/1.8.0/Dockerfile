FROM openjdk:8-jre

MAINTAINER bing_huang <1278032416@qq.com>

USER root

ARG VERSION=1.8.0

ENV BASE_DIR "home/sentinel" 
ENV FILE_NAME "sentinel-dashboard" 
ENV PROJECT_NAME "sentinel-dashboard" 
ENV DASHBOARD_SERVER localhost:8080 
ENV SERVER_PORT 8080 
ENV USER_NAME "sentinel"
ENV PASS_WORD "sentinel" 
ENV TIME_OUT 7200
#RUN mkdir /home/sentinel       
WORKDIR /$BASE_DIR

RUN    mkdir ./app  
RUN    mkdir ./bin  
RUN    mkdir /root/logs 
RUN    mkdir /root/logs/csp
#RUN mkdir ./bin

COPY docker-entrypoint.sh ./bin/docker-entrypoint.sh

RUN chmod +x ./bin/docker-entrypoint.sh

ADD https://github.com/alibaba/Sentinel/releases/download/v${VERSION}/${FILE_NAME}-${VERSION}.jar ./

RUN \cp -f ./${FILE_NAME}-${VERSION}.jar ./app/app.jar

#COPY ./${PROJECT_NAME}.properties /root/logs/csp/${PROJECT_NAME}.properties

EXPOSE ${SERVER_PORT}

ENTRYPOINT ["bin/docker-entrypoint.sh"]