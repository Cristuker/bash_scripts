#!/bin/bash
clear;echo
if [ $# -ne 2 ]; then
    echo "Passe dois parametros";echo;
    echo "Exemplo: ./caminho/   extensao";
    echo "Enter para sair"; sleep 3;
    exit
fi
if [ -d $1 ]; then
    cd $1
    ls *.$2
    echo;
    echo "Substituindo - por _";
    for arq in *; do
        arq2=`echo $arq | tr '-' '_'`;
        if [ "$arq2" != $arq ]; then
            echo "Antes da mudança: $arq";
            echo "Depois: $arq2";
            mv $arq $arq2;
        fi
    done
else
    echo "O diretório passado não existes"
fi