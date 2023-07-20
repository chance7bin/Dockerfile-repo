# Dockerizing MongoDB: Dockerfile for building MongoDB images
# Based on ubuntu:16.04, installs MongoDB following the instructions from:
# http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/

FROM ubuntu:22.04

RUN DEBIAN_FRONTEND=noninteractive sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list \
    && DEBIAN_FRONTEND=noninteractive apt-get update -y

RUN apt-get install -y gnupg curl

# Installation:
# Import MongoDB public GPG key AND create a MongoDB list file
RUN curl -fsSL https://pgp.mongodb.com/server-6.0.asc | \
   gpg -o /usr/share/keyrings/mongodb-server-6.0.gpg \
   --dearmor
RUN echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-6.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list

# Update apt-get sources AND install MongoDB
RUN apt-get update && apt-get install -y --allow-unauthenticated mongodb-org

# Create the MongoDB data directory
RUN mkdir -p /data/db

# Expose port #27017 from the container to the host
EXPOSE 27017

# Set /usr/bin/mongod as the dockerized entry-point application
ENTRYPOINT ["/usr/bin/mongod"]
