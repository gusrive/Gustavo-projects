#!/usr/bin/env bash
#--------------------- Descrição ---------------------------#
###########################################
# Script de porcentagem de uso dos diretórios /dev
#
#
#Gustavo Sousa 29/01/2021
#
#
#para rodar ./Crontab_dev.sh
###########################################
#---------------- VARIAVEIS --------------------------------#
LOG="/tmp/crontab_dev.tmp"
SEGLOG="/home/gustavo/Estudo/crontab_dev.log"
PORCENTAGEM=$(df -h |egrep /dev/s[a-d]| awk '{print $5}' | tr -d "%")
DIRETORIO=$(df -h |grep /dev* | awk '{print $6}')
LIMITE=70
EMAIL=gustavo
#------------------------ FUNÇÃO ---------------------------#
#------------------------ EXECUÇÃO -------------------------#
for loop in $(df -h |grep sda|tr -s " " |tr -s ' ' ':')
do
  if [ $loop -ge $LIMITE ]
  then
    PART=$(echo $busca|cut -d"." -f6)
    # Envio de E-mail
    echo "Relatorio dos diretorios /dev :"
    echo
    echo "Favor efetuar uma limpeza do diretorio $PART" >>  $LOG
    echo >> $LOG
    echo >> "Limite = $LIMITE%" >> $LOG
    echo >> $LOG
    df -h $PART >> $LOG

    mail -s "[$0] - Verificar o diretorio $PART e efetuar uma limpeza. Limite de espaço escedido!" $EMAIL <<< $LOG
    # Gerar de LOG
    echo "$(date) - $0 - Verificar diretorio $PART - Uso $PORCENTAGEM%" >> $SEGLOG
    rm -f $LOG
  fi
done
