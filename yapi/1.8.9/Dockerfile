FROM node:11

MAINTAINER bing_huang<1278032416@qq.com>

ARG VERSION=1.8.9
 
ENV HOME "/home" 
ENV PORT 3000 
ENV ADMIN_EMAIL "1278032416@qq.com"
ENV DB_SERVER "mongo"  
ENV DB_NAME "yapi" 
ENV DB_PORT 27017  
ENV DB_USER "root"  
ENV DB_PASS "Admin123"   
ENV DB_AUTH "admin" 
ENV VENDORS ${HOME}/vendors 
ENV GIT_URL     https://github.com/YMFE/yapi.git
ENV GIT_MIRROR_URL     https://gitee.com/mirrors/YApi.git  

WORKDIR ${HOME}/

COPY ./docker-entrypoint.sh /bin
COPY ./config.json ${HOME}
#COPY wait-for-it.sh /

RUN rm -rf node && \
   ret=`curl -s  https://api.ip.sb/geoip | grep China | wc -l` && \
   if [ $ret -ne 0 ]; then \
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
RUN ls
EXPOSE ${PORT}

ENTRYPOINT ["/bin/docker-entrypoint.sh"]