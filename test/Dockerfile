# 使用ubuntu作为基础镜像
FROM ubuntu:20.04

# 支持中文字符
ENV LANG=C.UTF-8

# apt换源
RUN DEBIAN_FRONTEND=noninteractive sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && DEBIAN_FRONTEND=noninteractive apt-get update -y

ARG ENTRY_PATH=/usr/local/bin

COPY ./entrypoint.sh ${ENTRY_PATH}/entrypoint.sh

RUN chmod +x ${ENTRY_PATH}/entrypoint.sh


# 运行应用程序
ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]