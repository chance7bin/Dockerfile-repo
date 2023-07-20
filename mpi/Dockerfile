# 基于slim做构建
FROM binb-gdal:1.0

# apt换源
RUN DEBIAN_FRONTEND=noninteractive sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && DEBIAN_FRONTEND=noninteractive sed -i s@/security.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && DEBIAN_FRONTEND=noninteractive apt-get update -y

# 设置工作目录
WORKDIR /app

# 复制代码库到容器中
COPY . /app

# 安装编译环境 fort77 gfortran
RUN apt-get install -y fort77 gfortran

# 解压安装包
RUN tar xzvf mpich-4.1.2.tar.gz \
    && cd mpich-4.1.2 \
    && ./configure --prefix=/usr/local/mpich-4.1.2 \
    && make && make install

# 设置环境变量 error: source: not found
RUN echo 'export PATH=/usr/local/mpi-4.1.2/bin:$PATH' >> /root/.bashrc \
    && source /root/.bashrc


# 设置容器启动时运行的命令
ENTRYPOINT ["tail", "-f", "/dev/null"]