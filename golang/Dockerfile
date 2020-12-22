# 构建时环境 golang build 
 
FROM golang:1.15-alpine AS builder
 
WORKDIR /build
 
ENV GOPROXY https://goproxy.cn
 
ARG VERSION
 
ENV URL=https://github.com/hb0730/auto-sign/archive/${VERSION}.tar.gz
 
ADD ${URL} .
 
RUN tar -zxvf ${VERSION}.tar.gz && rm -f ${VERSION}.tar.gz
 
RUN cd auto-sign-${VERSION} && mv -f * .. && cd .. && rm -rf auto-sign-${VERSION}  && ls
 
RUN go mod download
 
RUN CGO_ENABLED=0 GOARCH=amd64 GOOS=linux go build -a -o . && ls
 
# 运行时环境  rodorg/rod 安装了Chrome
FROM rodorg/rod AS final
 
WORKDIR /app
# 构建环境  将goalng build 构建的 copy 到现在环境
COPY --from=builder /build/auto-sign /app/
# 静态文件 对应项目相对位置 
COPY ./config /app/config
# 运行二进制文件
ENTRYPOINT ["/app/auto-sign"]