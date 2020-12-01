#!/bin/bash
# /home/cristian/github/pastaTeste prova.txt estou
clear;
echo;

EncerraPrograma() {
    sleep 3;
    exit;
}

read -p "Informe 3 argumentos (Rota completa, nome de um arquivo, uma palavra): " rota arquivo palavra
echo;
if [ -z $palavra ] || [ -z $rota ] || [ -z $arquivo ] ; then
    echo "Informe os 3 parametros de forma correta!";
    EncerraPrograma;
fi 

if [ -d $rota ]; then # testa se é um diretório && se o arquivo existe && palavra não é nula
   ls $rota;
else
    echo "Essa rota não existe!";
    EncerraPrograma;
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
    EncerraPrograma;
fi

# if [ -n $palavra ]
# else
# fi