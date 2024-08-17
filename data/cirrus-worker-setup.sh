#!/bin/sh

echo "$1" > /etc/environment && systemctl start cirrus-worker
