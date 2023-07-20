# 使用ubuntu作为基础镜像
FROM ubuntu:20.04

# 支持中文字符
ENV LANG=C.UTF-8

# tzdata会以交互方式提醒用户选择使用位置
ENV DEBIAN_FRONTEND=noninteractive

# apt换源
RUN DEBIAN_FRONTEND=noninteractive sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && DEBIAN_FRONTEND=noninteractive apt-get update -y

# 基础依赖
RUN apt-get install -y --no-install-recommends ca-certificates netbase \
    && rm -rf /var/lib/apt/lists/


# 更新系统软件包并安装必要的依赖
RUN apt-get install -y \
    python3.8 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/
# Run rm -rf /var/lib/apt/lists/*

# 将python3链接到python
RUN cd /usr/bin && ln -s pydoc3 pydoc && ln -s python3 python && ln -s python3-config python-config

# 设置pip源为清华大学镜像（可选）
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

# 确定工作目录
# WORKDIR /app

# 将当前目录下的文件复制到工作目录
# COPY . /app

# 安装依赖
# RUN pip install -r requirements.txt
# or
# RUN pip install --no-cache-dir -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple \
#     && find /usr/local/lib -name '*.pyc' -delete

# 运行应用程序
CMD [ "python"]
