FROM node:11

MAINTAINER bing_huang<1278032416@qq.com>

ARG VERSION=1.8.5
 
ENV HOME "/home" \
PORT 3000 \
ADMIN_EMAIL 1278032416@qq.com \
DB_SERVER "mongo" \ 
DB_NAME "yapi" \
DB_PORT 27017 \ 
DB_USER root  \
DB_PASS Admin123 \  
DB_AUTH admin  \
VENDORS ${HOME}/vendors \
GIT_URL https://github.com/YMFE/yapi.git \ 
GIT_MIRROR_URL https://gitee.com/mirrors/YApi.git 

WORKDIR ${HOME}/

COPY docker-entrypoint.sh /bin
COPY config.json ${HOME}
#COPY wait-for-it.sh /

RUN rm -rf node && \
   ret = `curl -s  https://api.ip.sb/geoip | grep China | wc -l` && \
   if [ $ret -ne 0]; then \
    GIT_URL=${GIT_MIRROR_URL} && npm config set registry https://registry.npm.taobao.org; \
   fi; \
   echo ${GIT_URL} && \
   git clone ${GIT_URL} vendors && \
   cd vendors && \
   git fetch origin  v${VERSION}:v${VERSION} && \
   git checkout v${VERSION} && \
   npm install -g node-gyp yapi-cli && \
   npm install --production && \
   chmod +x /bin/docker-entrypoint.sh
        
EXPOSE ${PORT}

ENTRYPOINT ["/bin/docker-entrypoint.sh"]