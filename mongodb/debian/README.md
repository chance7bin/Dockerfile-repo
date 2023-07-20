写在前面：该镜像无法通过外部连接，会出现错误：
`failed to connect to server [localhost:27037] on first connect [MongoNetworkError: connection 71 to localhost:27037 closed`

# 镜像信息

操作系统：
- debian:11-slim


环境依赖
- mongodb
- python3.8

# 容器启动

```sh
docker run --name my-mongo -p 27027:27017 -d binb-mongodb:1.0
```

==**mongodb的安装要参考官方文档的list file, 要和Ubuntu版本对应！！**==

[参考](https://pablo-ezequiel.medium.com/creating-a-docker-image-with-mongodb-4c8aa3f828f2)
[mongodb 官方文档](https://www.mongodb.com/docs/v5.0/tutorial/install-mongodb-on-debian/)

>安装失败参考
>https://stackoverflow.com/questions/34733340/mongodb-gpg-invalid-signatures
>https://askubuntu.com/questions/842592/apt-get-fails-on-16-04-or-18-04-installing-mongodb