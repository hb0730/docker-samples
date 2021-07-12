FROM node:11 as build
ENV VERSION version-v
ENV GIT_URL "https://github.com/YMFE/yapi.git"
ENV GIT_MIRROR_URL     https://gitee.com/mirrors/YApi.git

WORKDIR /home/yapi

RUN rm -rf ** && \ 
    ret=`curl -s  https://api.ip.sb/geoip | grep China | wc -l` && \
    if [ $ret -ne 0 ]; then \
        GIT_URL=${GIT_MIRROR_URL} && npm config set registry https://registry.npm.taobao.org; \
    fi; \
    echo ${GIT_URL} && \
    git clone --branch ${VERSION} --single-branch --depth 1 ${GIT_URL}  vendors  && cd vendors && \
    npm install --production

FROM node:11
MAINTAINER hb0730<huangbing0730@gmail.com>
WORKDIR /home/yapi
COPY --from=build /home/yapi/vendors ./vendors
COPY config.json  .
CMD ["node","/home/yapi/vendors/server/app.js"]
