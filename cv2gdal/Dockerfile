# 使用官方 Python 镜像作为基础镜像
FROM python:3.8

# 安装系统依赖
RUN apt-get update && apt-get install -y \
    python3-gdal \
    libgdal-dev \
    python3-opencv \
    libopencv-dev

# 设置工作目录
WORKDIR /app

# 复制当前目录中的所有文件到工作目录
COPY . .

# 安装 Python 依赖包
RUN pip install numpy

# 设置环境变量
ENV GDAL_VERSION 3.3.0

# 安装 GDAL Python 绑定
RUN pip install GDAL==$GDAL_VERSION

# 安装 opencv-python
RUN pip install opencv-python

# 启动命令
CMD ["python"]
