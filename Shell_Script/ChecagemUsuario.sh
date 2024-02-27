#!/usr/bin/env bash
#--------------------- Descrição ---------------------------#
###########################################
# Script de Checagem do usuário informado
#
#
#Gustavo Sousa 08/01/2024
#
#
#para rodar ./Crontab_dev.sh
###########################################
#---------------- VARIAVEIS --------------------------------#
NUM_UID=$(cat /etc/passwd |grep $1 |cut -d: -f3)
USO=$(du -sh /home/$1 |cut -d "" -f1)
#------------------------ FUNÇÃO ---------------------------#
#------------------------ EXECUÇÃO -------------------------#
echo "================================================================"
echo "Relatório do usuário: $1" 
echo
echo "UID: $NUM_UID" # UID é uma variavel de ambiente
echo
echo "Total usado no /home/$1: $USO"
echo
echo 


echo "================================================================"