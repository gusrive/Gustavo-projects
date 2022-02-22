#!/usr/bin/env bash
#--------------------- Descrição ---------------------------#
#O Script ira verificar a hora atual e informar se é AM ou PM
#
#
#12/11/2020 Gustavo Sousa

#---------------- VARIAVEIS --------------------------------#
DATA=$(date +%k)

#------------------------ FUNÇÃO ---------------------------#
HoraAtual () {
  if [ "$DATA" -le 11 ]
  then
    echo "Bom Dia!"
    echo
    echo " A hora atual é: $(date +%r) AM"

  elif [ "$DATA" -le 18 ]
  then
    echo "Boa tarde!"
    echo
    echo "A hora atual é: $(date +%r) PM"

  else
    echo "Boa noite"
    echo
    echo "A hora atual é: $(date +%r) PM"

  fi
}
#------------------------ EXECUÇÃO -------------------------#

clear
$DATA
HoraAtual
