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
GIT_USER YMFE \
REPO yapi  \
RET=0

WORKDIR ${HOME}/

COPY docker-entrypoint.sh /bin
COPY config.json ${HOME}

RUN rm -rf node && \
wget https://github.com/YMFE/yapi/archive/v${VERSION}.tar.gz && \
tar -zxvf v${VERSION}.tar.gz && \
mv yapi-${VERSION} vendors && \
cd vendors && \
npm install -g node-gyp yapi-cli && \
npm install --production && \
chmod +x /bin/docker-entrypoint.sh

EXPOSE ${PORT}

ENTRYPOINT ["/bin/docker-entrypoint.sh"]