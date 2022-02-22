#!/usr/bin/env bash
#--------------------- Descrição ---------------------------#
#####################################
# O script irá verificar e gerar um backup dentro de 7 dias,
#se já existir um o script irá perguntar se faz ou não
#
#Execução ./GeraBackup.sh
#
#Gustavo Sousa 13/11/2020 - Criado
#Gustavo Sousa 11/08/2020 - Atualizado
#####################################
#---------------- VARIAVEIS --------------------------------#
DATA=$(date +%Y-%m-%d-%H.%M)
LS="/home/gustavo/Backup"
ARQUIVO="backup_home_$DATA.tgz"
DIR="/home/gustavo"
DOWN="/home/gustavo/Downloads"

#------------------------ FUNÇÃO ---------------------------#
CriaDiretorio () {
  if  [ ! -d "$LS" ]
  then
    echo "Diretório não existe"
    echo ""
    echo "O Diretório Backup será criado: "
    mkdir "$LS"
    echo
  fi
}

CriaBackup () {
  if [ ! -f "$DIAS" ]
  then
    tar -czf $LS/$ARQUIVO $DOWN
    echo "Backup Realizado!"
  else
    read -p "Já foi gerado um backup nos ultimos 7 dias, deseja realizar um novo? (s/n)" RESP
    if [ $RESP = s ]
    then
      tar -czf $LS/$ARQUIVO $DOWN
      echo "Backup Realizado!"
    else
      echo "Backup não realizado"
      exit 1
    fi
  fi
}

#------------------------ EXECUÇÃO -------------------------#
clear
CriaDiretorio

DIAS=$(find $LS -ctime -7 -name "backup_*" |head -n1)

CriaBackup
