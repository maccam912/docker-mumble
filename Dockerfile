FROM ubuntu
MAINTAINER Matt Koski <maccam912@gmail.com>
RUN apt-get update
RUN apt-get install tar wget build-essentials -y
RUN adduser admin
RUN cd / && mkdir murmur
RUN cd /tmp && wget http://mumble.info/snapshot/murmur-static_x86-1.2.3-380-g3bcc83e.tar.bz2
RUN cd /tmp && tar xvfj murmur* -C /murmur
RUN su - admin
RUN cd /murmur/murmur* && ./murmur.x86 -supw secret && ./murmur.x86
EXPOSE 64738:64738
EXPOSE 80:80
EXPOSE 22:22
EXPOSE 443:443
