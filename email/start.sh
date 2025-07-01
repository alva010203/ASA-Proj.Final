#!/bin/env bash

useradd -m -s /bin/false cara
echo 'cara:cara123' | chpasswd
chown -R cara:cara /home/cara


useradd -m -s /bin/false coroa
echo 'coroa:coroa123' | chpasswd
chown -R coroa:coroa /home/coroa


service dovecot start
service syslog-ng start
exec postfix start-fg
