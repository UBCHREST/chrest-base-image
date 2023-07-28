# ubuntu:latest points to the latest LTS
ARG BASE_IMAGE=ubuntu:latest
FROM $BASE_IMAGE

# Install dependencies
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install build-essential gfortran git cmake autoconf automake git python3 python3-distutils libtool clang libomp-dev clang-format pkg-config libpng-dev valgrind curl python-is-python3 gdb wget python3-dev python3-pip npm
