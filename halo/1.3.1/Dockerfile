FROM openjdk:8-jre

MAINTAINER bing_huang <1278032416@qq.com>

ENV GIT_URL=https://github.com/halo-dev/halo/releases/download 
ENV BASE_DIR=/home/halo 
ENV SERVER_PORT=8090 
ENV TIME_ZONE=Asia/Shanghai 
ENV JVM_XMS=256m 
ENV JVM_XMX=256m 
ENV JVM_XMN=256m 
ENV JVM_MS=128m 
ENV JVM_MMS=320m 

ARG HALO_VERSION=1.3.1

WORKDIR $BASE_DIR


ADD ${GIT_URL}/v${HALO_VERSION}/halo-${HALO_VERSION}.jar ./

ADD bin/docker-entrypoint.sh bin/docker-entrypoint.sh
ADD conf/application.properties conf/application.properties

RUN chmod +x bin/docker-entrypoint.sh
RUN mv halo-${HALO_VERSION}.jar halo.jar

EXPOSE ${SERVER_PORT}

ENTRYPOINT ["bin/docker-entrypoint.sh"]