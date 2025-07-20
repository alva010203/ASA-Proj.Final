FROM ubuntu:20.04

RUN apt update -y

RUN apt install -y \
        postfix \
        telnet \
        iproute2 \
        dovecot-core \
        syslog-ng \
        dovecot-imapd && \
        apt clean && rm -rf /var/lib/apt/lists/*

#configuração do postfix
COPY main.cf /etc/postfix/main.cf

#configurações do dovecot
COPY dovecot_conf/dovecot.conf /etc/dovecot/dovecot.conf
COPY dovecot_conf/conf.d /etc/dovecot/conf.d/

COPY start.sh /usr/local/bin/start.sh
RUN chmod 755 /usr/local/bin/start.sh

EXPOSE 25 587 143

CMD ["/usr/local/bin/start.sh"]
