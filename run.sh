#!/bin/bash

etcdctl -C $ETCD_HOST --no-sync set /skydns/local/$DOMAIN/"`hostname -s `" '{"host":"'`ip a | grep "scope global eth0" | grep -o '\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}'`'"}'

skydns
