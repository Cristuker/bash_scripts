#!/bin/bash
clear
nome='Cristian'
tipo='root'
msg1="$nome usa o ambiente como tipo" 
msg2="Sua rota atual é `pwd`"
echo
echo -e "$msg1 \n $msg2"
echo "Digite um número"
read numero
echo "Numero digitado $numero"
read -p "Informe um texto: " texto
echo "$texto"
read -p "Qual é o ano do seu aniversario?" ano 
read -p "Qual é o mes do seu aniversario?" mes

cal $mes $ano


