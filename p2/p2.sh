#!/bin/bash
clear;
echo;

Encerrar() {
    sleep 3;
    exit;
}

read -p "Informe o Nome do Usuario Linux : " usuario
echo;
if [ -z $usuario ]; then
    echo "Informe um Usuario Linux Correto";
    Encerrar;
fi 

if [ -d $usuario ]; then # testa se é um diretório && se o arquivo existe && palavra não é nula
   ls $usuario;
else
    echo "Esse Usuario Nao Existe!";
    Encerrar;
fi

cd $rota;

if [ -e $arquivo ]; then # pra testar o arquivo vc tem que estar na pasta dele
    if [ -s $arquivo ]; then
        grep -n -i --color "$palavra" prova.txt
    else
        echo "O arquivo informado está vázio!";
        EncerraPrograma;
    fi
else 
    echo "O arquivo informa não existe!";
    Encerrar;
fi

# if [ -n $palavra ]
# else
# fi