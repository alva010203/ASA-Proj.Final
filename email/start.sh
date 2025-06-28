#!/bin/env bash

useradd -m -s /bin/false cara
echo 'cara:cara123' | chpasswd

useradd -m -s /bin/false coroa
echo 'coroa:coroa123' | chpasswd

service dovecot start
service syslog-ng start
exec postfix start-fg
