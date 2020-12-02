#!/bin/bash
clear;
echo;

read -p "Insira o nome de um usuário linux: " usuario;

if [ -z $usuario ]; then
    echo "Informe um parametro correto!";
    sleep 3;
    exit;
fi

if [ "$(cat /etc/passwd | grep -i $usuario | cut -d ':' -f 1 | wc -l)" != "0" ]; then
    cd /home/$usuario
    ls -la | grep -i --color $usuario
else
    echo "Usuário não existe, informe um usuário valido"
    sleep 3;
    exit;
fi