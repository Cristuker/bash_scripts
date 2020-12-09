#!/bin/bash
clear;
echo;

echo "Usuário informado: " $1;

if [ $# != "1" ]; then
    echo "Informe o número de parametros correto!";
    sleep 3;
    exit;
fi

if [ "$(cat /etc/passwd | grep -i $1 | cut -d ':' -f 1 | wc -l)" != "0" ]; then
    cd /home/$1
    ls -la | grep -i --color $1
else
    echo "Usuário não existe, informe um usuário valido"
    sleep 3;
    exit;
fi