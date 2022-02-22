#!/usr/bin/env bash
##############################################
#Script para criar um arquivo de tamanho determinado
#
#
#
#11/12/2020 Gustavo Sousa
##############################################

clear
read -p "Informe o nome do arquivo a ser criado: " arquivo
read -p "Qual o conjunto de caracteres será usado no $arquivo? " caracteres
read -p "Informe o tamanho do $arquivo (em bytes): " tamanho

cat /dev/null > $arquivo

PORC_EXIBIDA=0

until [ $tamanho -le $(stat --printf=%s "$arquivo") ]
do
  echo -n $caracteres >> $arquivo
  SIZEATUAL=$(stat --printf=%s "$arquivo")
  PORC_ATUAL=$(expr $SIZEATUAL \* 100 / $tamanho)

  if [ $(expr $PORC_ATUAL % 10) -eq 0 -a $PORC_EXIBIDA -ne $PORC_ATUAL ]
  then
    echo "Concluído: $PORC_ATUAL% - Tamanho do Arquivo: $SIZEATUAL"
    PORC_EXIBIDA=$PORC_ATUAL
  fi
done
