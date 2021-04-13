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

#------------------------ FUNÇÃO ---------------------------#
#------------------------ EXECUÇÃO -------------------------#
#clear

echo "Iniciando atualizacao automatica do github"
echo
echo "Adicionando arquivos e modificações $(git add *)"
echo
echo "Efetuando commit! $(git commit -m  "adicionado")"
echo
echo "Efetuando Upload de arquivos" $(git push -u origin master)
echo
echo "Atualizacao feita com sucesso - $(date)" >> Git-automatico.log
