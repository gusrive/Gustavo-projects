#!/usr/bin/env bash

#####################################
# Script para gerar Backup
#
#Execução ./GeraBackup.sh
#
#13/11/2020 Gustavo Sousa
#####################################

DATA=$(date +%Y-%m-%d-%H.%M)
LS="/home/gustavo/Backup"
ARQUIVO="backup_home_$DATA.tgz"
DIR="/home/gustavo"
DOWN="/home/gustavo/Downloads"

clear
echo "=============  Script de backup ==============="
echo
if  [ ! -d "$LS" ]
then
  echo "Diretório não existe"
  echo ""
  echo "O Diretório Backup será criado: "
  mkdir "$LS"
  echo
fi

DIAS=$(find $LS -ctime -7 -name "backup_*" |head -n1)

if [ ! -f "$DIAS" ]
then
  tar -czf $LS/$ARQUIVO $DOWN
  echo "Backup Realizado!"
else
  read -p "Já foi gerado um backup nos ultimos 7 dias, deseja realizar um novo? (s/n)" RESP
  #echo "Já foi gerado um backup nos ultimos 7 dias, deseja realizar um novo? (s/n)"
  #read RESP
  if [ $RESP = s ]
  then
    tar -czf $LS/$ARQUIVO $DOWN
    echo "Backup Realizado!"
  else
    echo "Backup não realizado"
    exit 1
  fi
fi
