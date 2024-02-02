#!/usr/bin/env bash
#--------------------- Descrição ---------------------------#
###########################################
# Script de porcentagem de uso dos diretórios /dev
#
#
#Gustavo Sousa 02/02/2024
#
#
#para rodar ./Exec_1.sh
###########################################
#---------------- VARIAVEIS --------------------------------#

#------------------------ FUNÇÃO ---------------------------#
#------------------------ EXECUÇÃO -------------------------#
read -p "Olá, como é o seu nome? " nome
read -p "Qual o seu ano de nascimento? EX: DIA/MES/ANO : " ANO_NASC

Ano_atual=$(date +%Y)
nascimento=$( echo $ANO_NASC | cut -d "/" -f3)
idade=$(echo "$Ano_atual-$nascimento" | bc)

echo "Tudo bem $nome?"
echo
echo "Você tem/terá $idade anos"