#!/usr/bin/env bash
#
# Gustavo Sousa  22/05/2021
#
# ---------------------------- Descrição -------------------------------- #
#  Este programa irá receber um parâmetro e informar se o mesmo é um arquivo ou
#  diretório
#  Exemplos:
#      $ ./Arquivo_Diretorio.sh
#      Neste exemplo o script será executado ...
# ---------------------------------------------------------------------------- #

# --------------------------------- VARIÁVEIS -------------------------------- #

# ---------------------------------------------------------------------------- #

# --------------------------------- FUNÇÕES ---------------------------------- #
Procura () {
  for i in $(ls -l |grep $parametro |cut -c1)
  do
    if [ "$i" == d ]
    then
    echo "O $parametro é um diretório!"
  elif [ "$i" == 0 ]
  then
    echo "Não contrado"
    exit 0
  else
    echo "O $parametro é um arquivo"
  fi
  done
}
# ---------------------------------------------------------------------------- #

# --------------------------------- EXECUÇÃO --------------------------------- #
clear
echo
read -p "Informe arquivo ou diretório desejado: " parametro
Procura

# ---------------------------------------------------------------------------- #
