# Base da imagem
FROM ubuntu:latest 

RUN apt-get update -y && \
    apt-get install -y --fix-missing && \
    apt-get install -y bind9 dnsutils && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Copia arquivo para dentro da imagem
COPY named.conf.local /etc/bind
COPY db.asa.br /etc/bind
COPY db.cliente1.br /etc/bind


# ENTRYPOINT [ "executable" ]
# No caso abaixo, o serviço chamado named (bind) é executado em primeiro plano
EXPOSE 5353/tcp
EXPOSE 5353/udp

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
