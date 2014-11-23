FROM ubuntu
MAINTAINER Matt Koski <maccam912@gmail.com>

RUN apt-get update && apt-get upgrade -y
RUN apt-get install mumble-server -y
RUN /etc/init.d/mumble-server restart

EXPOSE 64738:64738
