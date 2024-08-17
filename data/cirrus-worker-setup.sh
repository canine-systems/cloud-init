#!/bin/sh

echo "CIRRUS_TOKEN=$1" > /etc/environment && systemctl start cirrus-worker
