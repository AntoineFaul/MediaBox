FROM linuxserver/deluge:latest

LABEL maintainer="Roon"

ARG DEBIAN_FRONTEND="noninteractive"


RUN apt-get update
RUN apt-get install openvpn -y
RUN apt-get clean

RUN mkdir /etc/services.d/openvpn
COPY openvpn_run /etc/services.d/openvpn/run

