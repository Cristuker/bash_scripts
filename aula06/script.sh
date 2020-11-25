#!/bin/bash
clear;
echo;

Menu() {
    clear;
    echo "   Menu"; echo;
    echo "1. Listagem longa";
    echo "2. Lista diretório";
    echo "3. Lista arquivos";
    echo "4. Lista link";
    read -p "-> " op;
}

read -p "Informe uma rota " rota;
sleep 2;

Menu

if [ -d $rota ]; then
    cd $rota;

    
    if [ $op = "1" ]; then
        clear
        ls -l
    elif [ $op = "2" ]; then
        clear
        ls -lt | grep "^d" --color
    elif [ $op = "3" ]; then
        clear
        ls -lt | grep "^-" --color
    elif [ $op = "4" ]; then
        clear
        ls -lt | grep "^l" --color
    else
        echo;echo "Digite uma opção válida... Voltando para o menu.";
        sleep 3; Menu
    fi

else
    echo "Informe um rota válida"
fi