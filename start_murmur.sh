### BEGIN INIT INFO
# Provides: Murmur Server Installation
# Required-Start: $local_fs $network
# Required-Stop: $local_fs $remote_fs
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: Voice Chat Service
# Description: Murmur is an open source Voice Chat Server for Gamers
### END INIT INFO
#! /bin/sh
# /etc/init.d/murmur
MURMURBIN=/murmur/murmur*/murmur.x86
MURMURINI=/murmur/murmur*/murmur.ini
case "$1" in
start)
if [ -x $MURMURBIN ] ; then
echo "Starting script murmur"
$MURMURBIN -ini $MURMURINI
else
echo "$MURMURBIN not installed"
fi

echo "Stopping script murmur"
pkill murmur.x86 2 > /dev/null

echo "Restarting script murmur"
pkill murmur.x86 2 > /dev/null
sleep 1
if [ -x $MURMURBIN ] ; then
echo "Loading murmur..."
$MURMURBIN -ini $MURMURINI
else
echo "$MURMURBIN not installed"
fi

MURMURPID=`pidof $MURMURBIN`
if (( $? ))
then
echo "murmur is NOT running"
else
echo "murmur IS running, pid=$MURMURPID"
fi

echo "Usage: $0 {start|stop|restart|status}"
exit 1

esac
exit 0
