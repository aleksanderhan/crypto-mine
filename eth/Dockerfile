FROM nvidia/cuda:11.2.1-runtime-ubuntu20.04

LABEL maintainer="aleksanderhan@gmail.com"
LABEL version="1.0"
LABEL description="ethminer Dockerfile"

WORKDIR = /srv/

RUN apt update && apt upgrade -y
RUN apt autoremove
RUN apt install -y mesa-common-dev

RUN apt-get update \
    && apt-get -y install software-properties-common \
    && add-apt-repository -y ppa:ethereum/ethereum -y \
    && apt-get update \
    && apt-get install -y git \
     cmake \
     libcryptopp-dev \
     libleveldb-dev \
     libboost-all-dev \
     libgmp-dev \
     libreadline-dev \
     libcurl4-gnutls-dev \
     ocl-icd-libopencl1 \
     opencl-headers \
     mesa-common-dev \
     libmicrohttpd-dev \
     build-essential

COPY ./run.sh .

ADD https://github.com/ethereum-mining/ethminer/releases/download/v0.18.0/ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz .
RUN mkdir ethminer
RUN tar -xzvf ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz -C ./ethminer

CMD tail -f /dev/null