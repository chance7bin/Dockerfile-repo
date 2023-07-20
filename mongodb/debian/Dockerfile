# 基于slim做构建
FROM python:3.8-slim
# FROM binb-python:3.8

# tzdata会以交互方式提醒用户选择使用位置
ENV DEBIAN_FRONTEND=noninteractive

# apt换源
RUN DEBIAN_FRONTEND=noninteractive sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && DEBIAN_FRONTEND=noninteractive sed -i s@/security.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && DEBIAN_FRONTEND=noninteractive apt-get update -y

# 安装 通过 HTTPS添加新存储库所需的依赖项
# RUN apt-get install -y dirmngr gnupg apt-transport-https ca-certificates software-properties-common
RUN apt-get install -y gnupg curl

# Installation:
RUN curl -fsSL https://pgp.mongodb.com/server-5.0.asc | \
   gpg -o /usr/share/keyrings/mongodb-server-5.0.gpg \
   --dearmor
RUN echo "deb [ signed-by=/usr/share/keyrings/mongodb-server-5.0.gpg] http://repo.mongodb.org/apt/debian bullseye/mongodb-org/5.0 main" | tee /etc/apt/sources.list.d/mongodb-org-5.0.list
RUN apt-get update && apt-get install -y --allow-unauthenticated mongodb-org

# Create the MongoDB data directory
RUN mkdir -p /data/db

RUN DEBIAN_FRONTEND=noninteractive sed -i s@/127.0.0.1/@/0.0.0.0/@g /etc/mongod.conf

# Expose port #27017 from the container to the host
EXPOSE 27017

# Set /usr/bin/mongod as the dockerized entry-point application
ENTRYPOINT ["/usr/bin/mongod"]
