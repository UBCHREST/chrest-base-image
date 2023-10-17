# ubuntu:latest points to the latest LTS
ARG BASE_IMAGE=ubuntu:latest
FROM $BASE_IMAGE

# Install dependencies
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install build-essential git cmake autoconf automake python3 python-is-python3 libtool clang clang-format pkg-config libpng-dev curl gdb
