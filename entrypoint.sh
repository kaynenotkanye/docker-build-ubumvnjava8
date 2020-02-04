#!/bin/sh
#while :; do :; done & kill -STOP $! && wait $!
tail -f /var/log/dpkg.log
