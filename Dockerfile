FROM ubuntu
MAINTAINER Matt Koski <maccam912@gmail.com>

RUN add-apt-repository ppa:mumble/release

RUN apt-get update && apt-get upgrade -y
RUN apt-get install mumble mumble-django -y
#RUN dpkg-reconfigure mumble-server

EXPOSE 64738:64738
EXPOSE 80:80
EXPOSE 22:22
EXPOSE 443:443
