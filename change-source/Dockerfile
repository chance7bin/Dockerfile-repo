# 基于slim做构建
FROM binb-gdal:1.0

# 设置工作目录
WORKDIR /app

# 复制 SEIMS 代码库到容器中
COPY . /app

# apt换源
RUN DEBIAN_FRONTEND=noninteractive sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && DEBIAN_FRONTEND=noninteractive sed -i s@/security.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && DEBIAN_FRONTEND=noninteractive apt-get update -y

# 设置容器启动时运行的命令
ENTRYPOINT ["tail", "-f", "/dev/null"]