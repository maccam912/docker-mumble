FROM centos
MAINTAINER Matt Koski <maccam912@gmail.com>
RUN yum -y install bzip2 tar wget openssl-devel libsndfile-devel alsa-lib-devel protobuf-compiler protobuf-devel boost-devel avahi-compat-libdns_sd-devel speech-dispatcher-devel libdaemon-devel libusb-devel ice-3.4 ice-devel libcap-devel php-devel gcc make pcre-devel perl-ExtUtils-MakeMaker
RUN cd / && mkdir murmur
RUN cd /tmp && wget http://mumble.info/snapshot/murmur-static_x86-1.2.3-380-g3bcc83e.tar.bz2
RUN cd /tmp && tar xvfj murmur* -C /murmur
RUN cd /tmp/murmur/murmur && ./murmer.x86 -supw secret && ./murmer.x86
EXPOSE 64738:64738
EXPOSE 80:80
EXPOSE 22:22
EXPOSE 443:443
