#!/bin/bash
clear
echo
echo -e "Você tem 5 segundos para inserir o usuário  "
read -p "Usuário: " -t 5 usuario
echo
read -sp "Digite uma senha: " senha
echo
read -p "Informe um código de até 7 digitos: " -n 7 codigo
echo
echo
echo "Informações inseridas com sucesso!"
echo -e "Usuário: $usuario \nSenha: $senha \nCódigo: $codigo"