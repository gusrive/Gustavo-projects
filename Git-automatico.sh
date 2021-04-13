#!/usr/bin/env bash
#--------------------- Descrição ---------------------------#
###########################################
# Script efetua o commit e atualiza os arquivos no github
#
#
#Gustavo Sousa 13/04/2021
#
#
#para rodar ./Git-automatico.sh
###########################################
#---------------- VARIAVEIS --------------------------------#
ADD=$(git add *)
ATUALIZA=$(git commit -m * "Upload de arquivos feitos - $(date)" )
#------------------------ FUNÇÃO ---------------------------#
#------------------------ EXECUÇÃO -------------------------#
clear

echo "Iniciando atualizacao automatica do github"
echo
