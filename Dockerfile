FROM jrottenberg/ffmpeg:4.4-ubuntu

LABEL maintainer Minsuk Song <msuksong@gmail.com>

RUN apt update && \
    apt install -y python3 python3-pip
RUN pip3 install youtube-dl

WORKDIR /downloads
ENTRYPOINT [ "youtube-dl" ]
