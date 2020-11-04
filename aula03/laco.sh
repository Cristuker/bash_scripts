#!/bin/bash
clear; echo
echo "Calculo da média dos valores inteiros fornecidos: ";echo
valor="0"; 
media="0";
soma="0";
qtde="0";
while true; 
    do
    read -p "De um número inteiro de 0 a 100 ou -1 para sair " valor;
    if [ $valor -eq -1 ]
    then
        echo "Média calculada = $media"; echo
        echo "Encerrando processamento"; 
        break;
    elif [ $valor -lt 0 ] || [ $valor -gt 100 ]; then
        echo "Valor fora da faixa... Tente novamente"
    else
        soma=$[ $soma + $valor ]
        qtde=$[ $qtde +1 ]
        media=$[ $soma / $qtde]
    fi 
done