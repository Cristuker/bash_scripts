#!/bin/bash


Principal() {
    echo
    clear
    read -sp "Digite uma senha: " senha
    if [ "$senha" = "123" ]; then
        Menu
    else
        echo "Senha incorreta, tente novamente..."
        echo "Pressione enter para continuar"; read ``
        Principal
    fi
}

Menu() {
    clear; echo
    echo "** Gestor de usuários **"
    echo
    echo "========================="
    echo "1. Identificar usuário"
    echo "2. Criar um usuário"
    echo "3. Apagar um usuário"
    echo "4. Sair"
    echo "========================="
    echo 
    read -p "Escolha uma opção
-> " op
    case $op in 
        1) Identificar;;
        2) Criar;;
        3) Apagar;;
        4) Sair;;
        *) Erro;;
    esac 
    echo
}

Identificar() {
    read -p "Digite o nome do usuário
-> " usuario
    if [ "$(cat /etc/passwd| grep -i $usuario| wc -l)" = "1" ]; then
        echo "Usuário: $usuario"
        id $usuario
        sleep 3; Menu
    else
        echo 
        echo "Usuário $usuario não está cadastrado"
        sleep 3; Menu
    fi
}

Criar() {
    read -p "Digite o nome do usuário
-> " usuario
    if [ "$(cat /etc/passwd| grep -i $usuario| wc -l)" = "1" ]; then
        echo "Nome de usuário indisponivel. Tente novamente."
        sleep 3; Menu
    else
        sudo useradd $usuario
        sudo passwd $usuario
        sudo mkdir ~/../$usuario
        echo "Usuário criado com sucesso!!"
        sleep 3; Menu
    fi
}

Apagar(){
    read -p "Digite o nome do usuário
-> " usuario
    if [ "$(cat /etc/passwd| grep -i $usuario| wc -l)" = "1" ]; then
        echo "Deletando o usuário $usuario ...."
        echo
        sudo userdel $usuario
        rm -rf $usuario
        sudo rm -rf ~/../$usuario
        sleep 3; Menu
    else
        echo "Usuário não existe"
        sleep 3; Menu
    fi
}

Erro() {
    echo "Opção inválida. Tente novamente"
    sleep 3; Menu
}

Principal