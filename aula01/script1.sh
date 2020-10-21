#!/bin/bash
clear
echo
read -p "Informe o tempo em segundos para o processamento: " segundos
echo
minutos=$[segundos / 60]
segundo=$[segundos / 60]
echo "O tempo aproximado do processamento foi: "
echo "$minutos minuto(s)"
echo "$segundo segundo(s)"
echo