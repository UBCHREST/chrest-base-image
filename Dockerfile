# ubuntu:latest points to the latest LTS
FROM ubuntu:latest

# Install dependencies
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install build-essential gfortran git cmake autoconf automake git python3 python3-distutils libtool clang libomp-dev clang-format pkg-config libpng-dev valgrind curl
