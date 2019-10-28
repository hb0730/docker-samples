FROM jenkins/jenkins:VERSION-V

MAINTAINER bing_huang <1278032416@qq.com>

USER root

ENV MAVEN_VERSION=3.6.1 
ENV NODE_VERSION=v10.16.3 
ENV JDK_VERSION=8

##快速 sh脚本
RUN curl -fsSL get.docker.com -o get-docker.sh
RUN sh get-docker.sh --mirror Aliyun

COPY daemon.json /etc/docker/daemon.json

# 安装 Docker Compose
WORKDIR /usr/local/bin
RUN wget https://raw.githubusercontent.com/topsale/resources/master/docker/docker-compose
RUN chmod +x docker-compose

#install openjdk:${JDK_VERSION}-jdk
COPY --from=openjdk:8-jdk /usr/local/openjdk-${JDK_VERSION}  /usr/local/openjdk-${JDK_VERSION}

# install maven ${MAVEN_VERSION}
RUN mkdir -p /usr/local/maven
WORKDIR /usr/local/maven
RUN wget http://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz
#RUN wget https://raw.githubusercontent.com/topsale/resources/master/maven/apache-maven-${MAVEN_VERSION}-bin.tar.gz

RUN tar -zxvf apache-maven-${MAVEN_VERSION}-bin.tar.gz && \
    rm -fr apache-maven-${MAVEN_VERSION}-bin.tar.gz
# node
RUN mkdir -p /usr/local/node
WORKDIR /usr/local/node
RUN wget https://npm.taobao.org/mirrors/node/${NODE_VERSION}/node-${NODE_VERSION}-linux-x64.tar.gz
RUN tar -zxvf node-${NODE_VERSION}-linux-x64.tar.gz && \ 
    rm -rf node-${NODE_VERSION}-linux-x64.tar.gz
        

# 配置环境变量
ENV JAVA_HOME /usr/local/openjdk-${JDK_VERSION}
ENV MAVEN_HOME /usr/local/maven/apache-maven-${MAVEN_VERSION}
# /usr/local/node/node-v10.16.3-linux-x64
ENV NODE_HOME /usr/local/node/node-${NODE_VERSION}-linux-x64
ENV PATH $PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin:$NODE_HOME/bin

WORKDIR /

# node change registry

RUN  npm install -g cnpm --registry=https://registry.npm.taobao.org