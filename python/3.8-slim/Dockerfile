FROM python:3.8-slim


WORKDIR /usr/src/app

# python依赖安装
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple \
    && find /usr/local/lib -name '*.pyc' -delete

# CMD [ "python", "./your-daemon-or-script.py" ]
# 设置容器启动时运行的命令
ENTRYPOINT ["tail", "-f", "/dev/null"]