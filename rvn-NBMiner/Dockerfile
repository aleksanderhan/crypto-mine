FROM nvidia/cuda:10.2-base-ubuntu18.04

WORKDIR = /srv/

RUN apt update && apt upgrade -y
RUN apt autoremove


WORKDIR /
ADD https://github.com/NebuTech/NBMiner/releases/download/v40.1/NBMiner_40.1_Linux.tgz .

RUN tar zxvf NBMiner_40.1_Linux.tgz

ENV GPU_PLATFORM=1

COPY ./entrypoint.sh .
ENTRYPOINT ["/entrypoint.sh"]
CMD ["default"]