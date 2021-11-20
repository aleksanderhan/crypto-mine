FROM nvidia/cuda:10.2-base-ubuntu18.04

LABEL maintainer="aleksanderhan@gmail.com"
LABEL version="1.0"
LABEL description="nsfminer Dockerfile"

WORKDIR = /

RUN apt update && apt upgrade -y
RUN apt autoremove

COPY ./entrypoint.sh /

ADD https://github.com/no-fee-ethereum-mining/nsfminer/releases/download/v1.3.13/nsfminer_1.3.13-ubuntu_18.04-cuda_11.2-opencl.tgz .
RUN mkdir nsfminer
RUN tar xf nsfminer_1.3.13-ubuntu_18.04-cuda_11.2-opencl.tgz -C ./nsfminer

ENTRYPOINT ["/entrypoint.sh"]
CMD ["worker0"]