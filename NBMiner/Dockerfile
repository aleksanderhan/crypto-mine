FROM nvidia/cuda:10.2-base-ubuntu18.04

RUN apt update && apt upgrade -y
RUN apt autoremove


ADD https://github.com/NebuTech/NBMiner/releases/download/v40.1/NBMiner_40.1_Linux.tgz .
RUN tar zxvf NBMiner_40.1_Linux.tgz

ENV GPU_PLATFORM=1

COPY ./entrypoint.sh .
ENTRYPOINT ["/entrypoint.sh"]
CMD ["default"]