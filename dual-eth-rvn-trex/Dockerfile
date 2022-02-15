FROM nvidia/cuda:10.2-base-ubuntu18.04

RUN apt update && apt upgrade -y
RUN apt autoremove


ADD https://github.com/trexminer/T-Rex/releases/download/0.25.6/t-rex-0.25.6-linux.tar.gz .
RUN tar zxvf t-rex-0.25.6-linux.tar.gz t-rex

ENV GPU_PLATFORM=1

COPY ./entrypoint.sh .
ENTRYPOINT ["/entrypoint.sh"]
CMD ["default"]