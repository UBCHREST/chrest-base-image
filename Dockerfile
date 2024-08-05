# ubuntu:latest points to the latest LTS
#ARG BASE_IMAGE=ubuntu:latest
ARG BASE_IMAGE=ubuntu:22.04
FROM $BASE_IMAGE

# Install dependencies
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install --no-install-recommends build-essential gfortran libblas-dev liblapack-dev git cmake autoconf automake python3 python-is-python3 libtool clang clang-format pkg-config libpng-dev curl gdb ca-certificates \
	&& apt-get autoremove -y \
	&& apt-get purge -y --auto-remove \
	&& rm -rf /var/lib/apt/lists/*
