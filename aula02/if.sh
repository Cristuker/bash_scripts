#!/bin/bash
clear
echo
read -p "Informe um nome: " nome
if [ -z $nome ]; then
    echo; echo "Você não informou um nome"
    echo "Execute o script novamente"
else
    echo
    if [ $nome = "Dora" ]; then
        echo "É uma professora"
    else
        echo "É aluno!"
    fi
fi