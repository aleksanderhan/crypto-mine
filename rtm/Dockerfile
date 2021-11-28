FROM ubuntu:20.04

RUN apt update && apt upgrade -y && apt install -y \
	libcurl4 \
	;


ADD https://github.com/WyvernTKC/cpuminer-gr-avx2/releases/download/1.2.4.1/cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz .
RUN tar -xvf cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz

COPY ./entrypoint.sh .

ENTRYPOINT ["/entrypoint.sh"]
CMD ["worker0"]