#!/usr/bin/env bash
#
# Gustavo Sousa 19/05/2021
#
# -------------------------- Descrição ----------------------------------- #
#  Este programa irá inserir texto em um arquivo determinado. Caso o arquivo
#  não tenha permissão de escrita irá informar na tela
#  Exemplos:
#      $ ./Conteudo.sh
#      Neste exemplo o script será executado ...
# ---------------------------------------------------------------------------- #


# --------------------------------- VARIÁVEIS -------------------------------- #
ARQUIVO="/home/gustavo/Estudo/teste"
CONTEUDO=$( echo "$1" >> $ARQUIVO)
ARQUIVO2="/home/gustavo/Estudo"

# --------------------------------- FUNÇÕES ---------------------------------- #
Verifica_parametro () {
  if [ -z "$1" ]
  then
    echo "Parametro não informado!" ; exit 0
  fi
}

Escrita () {
  for loop in $(ls -l $ARQUIVO2 |grep teste |cut -c4)
  do
    if [ "$loop" = - ]
    then
      echo "Arquivo não possui permissão de escrita!" ; exit 0
    else
      echo " ($1) será enviado ao arquivo teste!" ; $CONTEUDO
    fi
  done
}

# --------------------------------- EXECUÇÃO --------------------------------- #
clear
Verifica_parametro
Escrita
# ---------------------------------------------------------------------------- #
