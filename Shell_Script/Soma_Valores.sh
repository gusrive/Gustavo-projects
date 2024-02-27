#!/usr/bin/env bash
#--------------------- Descrição ---------------------------#
###########################################
# Script de soma de valores
#
#
#Gustavo Sousa 27/02/2024
#
#
#
###########################################
#---------------- VARIAVEIS --------------------------------#


#------------------------ FUNÇÃO ---------------------------#
#------------------------ EXECUÇÃO -------------------------#

echo "=============== Script de Soma ==============="
echo
read -p "Digite um valor: " V1
read -p "Digite outro valor: " V2
SOMA=$[V1+V2]
echo
echo "A soma dos valores é " $SOMA