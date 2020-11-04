#!/bin/bash
clear
arq="/etc/passwd"
echo "Lendo o $arq..."
echo "Exiibindo usuário com id maior ou igual a 500"; echo
while IFS=:
    read -r user enpass uid gid desc home shell
    do
        if [ $uid -ge 500 ]; then
            echo "Usuário................: $user";
            echo "com identificacação....: $uid";
            echo "identificação do grupo : $gid";
            echo "comentário.............: $desc";
            echo "diretório nativo.......: $home";
            echo "shell..................: $shell";
            echo
            sleep 6;
        fi
done < $arq