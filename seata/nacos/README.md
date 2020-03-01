# seata server
seata Nacos部署方式
## 注意事项
* docker-compose.yml中有指定seata的ip
* registry.config 中指定有nacos地址以及namespace
* nacos目录与config.txt为seata nacos部署需要的脚本
* nacos目录中采用的python脚本用户config.txt部署到nacos 脚本: python ./config.txt nacos地址 命名空间（需要自己调整）
## nacos
nacos目录与config.txt可以参考<https://github.com/seata/seata/tree/develop/script/config-center>

## 参数
<https://github.com/seata/seata-samples/tree/master/seata-spring-boot-starter-samples>
<https://github.com/seata/seata/tree/develop/script>
<https://seata.io/zh-cn/docs/overview/what-is-seata.html>

# thanks
[seata](https://github.com/seata)
