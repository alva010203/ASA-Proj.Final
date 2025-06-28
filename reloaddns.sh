#!/bin/bash

# Verifica se o script está sendo executado como root
if [ "$EUID" -ne 0 ]; then
    echo "Este script deve ser executado como root ou com sudo." >&2
    exit 1
fi

IP=$(ip a show wlo1 | awk '/inet / {print $2}' | cut -d/ -f1)
arquivo="/etc/resolv.conf"
arquivo_dns="./dns/db.asa.br"

if grep -q "^nameserver $IP" "$arquivo"; then
    echo "O IP $IP já está no arquivo $arquivo"
else
    sed -i "/^nameserver/i nameserver $IP" "$arquivo"
    echo "$IP adicionado ao arquivo $arquivo"
fi

# Atualiza os registros A no arquivo de zona (sem backup)
if sed -i -E "/IN[[:space:]]+A[[:space:]]+/ s/[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/$IP/g" "$arquivo_dns"; then
    echo "IPs atualizados no arquivo $arquivo_dns"
else
    echo "Erro ao atualizar o IP no arquivo $arquivo_dns"
    exit 1
fi
