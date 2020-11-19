#!/bin/bash
clear;
# cut
echo "Executando script do cut - Mostrar primeira coluna da passwd";
echo;
cut -d: -f1 /etc/passwd
echo "Executando script do cut - Pega a segunda coluna do arquivo anotações.md";
echo;
cut -f 2  -d ' ' ./anotações.md
echo;
# sed
echo;
echo "Executando script do sed";
sed -n '16p' anotações.md
# grep
echo "Executando scripts do grep";
echo;
echo "Anotações.md";
grep --color "diferente" ./anotações.md
echo;
echo "/etc/passwd";
grep --color "gnome" /etc/passwd
# tr
echo "Executando scripts do tr";
echo;
echo "Anotações.md";
tr 'é' '=' < ./anotações.md > teste2
echo;
# sort
echo "Executando scripts do sort";
touch frutas.txt
echo 'maçãs
laranjas
peras
kiwis
bananas' > frutas.txt
sort frutas.txt > saida.txt
echo;
echo "Mostrando arquivos ordenados";
echo "----";
cat saida.txt
echo;
# paste
echo "Executando script do paste";
echo "Comparação dos arquivos classifcados anteriormente";
echo;
paste frutas.txt saida.txt