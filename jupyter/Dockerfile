# 基于slim做构建
FROM python:3.7-slim

# apt换源
RUN DEBIAN_FRONTEND=noninteractive sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
&& DEBIAN_FRONTEND=noninteractive apt-get update -y

# 依赖安装
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple \
	&& find /usr/local/lib -name '*.pyc' -delete


# 生成配置文件
RUN mkdir /opt/notebooks \
&& chmod -R 777 /opt/notebooks 

# 工作目录
WORKDIR /opt/notebooks

# 设置映射端口
EXPOSE 8888

# 设置容器启动时运行的命令
CMD jupyter lab --no-browser --config='/jupyter_lab_config.py'