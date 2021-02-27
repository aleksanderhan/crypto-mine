FROM nvidia/cuda:10.2-base-ubuntu18.04

LABEL maintainer="aleksanderhan@gmail.com"
LABEL version="1.0"
LABEL description="ethminer Dockerfile"

WORKDIR = /srv/

RUN apt update && apt upgrade -y
RUN apt autoremove

COPY ./run.sh .

ADD https://github.com/ethereum-mining/ethminer/releases/download/v0.18.0/ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz .
RUN mkdir ethminer
RUN tar -xzvf ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz -C ./ethminer

CMD ["run.sh"]
ENTRYPOINT ["/bin/bash"]