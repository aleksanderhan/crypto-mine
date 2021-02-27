FROM nvidia/cuda:11.2.1-runtime-ubuntu20.04

LABEL maintainer="aleksanderhan@gmail.com"
LABEL version="1.0"
LABEL description="ethminer Dockerfile"

WORKDIR = /srv/

RUN apt update && apt upgrade -y
RUN apt autoremove

COPY ./run.sh .

