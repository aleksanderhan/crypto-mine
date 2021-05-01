FROM nvidia/cuda:10.2-base-ubuntu18.04

LABEL maintainer="aleksanderhan@gmail.com"
LABEL version="1.0"
LABEL description="nsfminer Dockerfile"

WORKDIR = /srv/

RUN apt update && apt upgrade -y
RUN apt autoremove

COPY ./run.sh .

ADD https://github.com/no-fee-ethereum-mining/nsfminer/releases/download/v1.3.13/nsfminer_1.3.13-ubuntu_18.04-cuda_11.2-opencl.tgz .
RUN mkdir nsfminer
RUN tar xf nsfminer_1.3.13-ubuntu_18.04-cuda_11.2-opencl.tgz -C ./nsfminer

CMD ["run.sh"]
ENTRYPOINT ["/bin/bash"]