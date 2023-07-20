换源测试镜像

debian源
```
RUN DEBIAN_FRONTEND=noninteractive sed -i s@/deb.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && DEBIAN_FRONTEND=noninteractive sed -i s@/security.debian.org/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && DEBIAN_FRONTEND=noninteractive apt-get update -y
```

ubuntu源
```
RUN DEBIAN_FRONTEND=noninteractive sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && DEBIAN_FRONTEND=noninteractive apt-get update -y
```