FROM ubuntu:18.04

LABEL maintainer="aleksanderhan@gmail.com"
LABEL version="1.0"
LABEL description="rvnminer Dockerfile"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y && apt install -y \
    apt-utils \
    clinfo \
    curl \
    build-essential \
    dkms \
    ;

RUN mkdir -p /tmp/opencl-driver-amd
WORKDIR /tmp/opencl-driver-amd

ARG AMD_DRIVER=amdgpu-pro-20.40-1147287-ubuntu-18.04
ARG FILE_EXT=.tar.xz
ARG AMD_DRIVER_URL=https://drivers.amd.com/drivers/linux

RUN curl --referer $AMD_DRIVER_URL -O $AMD_DRIVER_URL/$AMD_DRIVER$FILE_EXT

RUN dpkg --add-architecture i386
RUN apt update -y
RUN apt install -y libc6:i386 libstdc++6:i386


RUN	tar -Jxvf $AMD_DRIVER$FILE_EXT
RUN apt install -y mesa-opencl-icd
RUN	./$AMD_DRIVER/amdgpu-install -y --headless --opencl=pal,legacy 


WORKDIR ~/
COPY ./run.sh .
ADD https://github.com/todxx/teamredminer/releases/download/0.8.2/teamredminer-v0.8.2-linux.tgz .

RUN tar zxvf teamredminer-v0.8.2-linux.tgz

CMD ["run.sh"]
ENTRYPOINT ["/bin/bash"]
