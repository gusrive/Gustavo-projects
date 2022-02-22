#!/usr/bin/env bash
#--------------------- Descrição ---------------------------#
################################
#Script recebe o nome do processo e verifica se o mesmo esta operando
#
#./MonitoraProcesso.sh para rodar o Script
#
#09/12/2020 Gustavo Sousa
###############################

#---------------- VARIAVEIS --------------------------------#

ADMIN=gustavo
PROAT=$(ps axu |grep $PROCESSO |grep -v grep |wc -l)
LOG="/home/gustavo/gustavo/Estudo/MonitoraProcesso.log"
EMAIL=$(cat $LOG | mutt -s "Relatorio de Execucao" $ADMIN < $LOG)

#------------------------ FUNÇÃO ---------------------------#
ProcessoAtivo (){
  if [ $PROAT -gt 0 ]
  then
    while [ $PROAT -gt 0 ]
    do
      echo "$(date) : O $PROCESSO está em execução!" >> $LOG
      mail -s "Relatorio de Execucao" gustavo <<< MonitoraProcesso.log
      sleep 3
    done
  else
    until ps axu |grep $PROCESSO |grep -v grep > /dev/null
    do
      echo "$(date) : ATENCAO!!!! O $PROCESSO nao esta em execucao!" >> $LOG
      mail -s "Relatorio de Execucao" gustavo <<< MonitoraProcesso.log
      sleep 3
      echo
    done

  fi
}

#------------------------ EXECUÇÃO -------------------------#
clear

read -p "Informe o nome do processo: " PROCESSO
ADMIN=gustavo
PROAT=$(ps axu |grep $PROCESSO |grep -v grep |wc -l)
LOG="/home/gustavo/gustavo/Estudo/MonitoraProcesso.log"
EMAIL=$(cat $LOG | mutt -s "Relatorio de Execucao" $ADMIN < $LOG)
#LOG="/tmp/msg_temp"

if [ $PROAT -gt 0 ]
then
  while [ $PROAT -gt 0 ]
  do
    echo "$(date) : O $PROCESSO está em execução!" >> $LOG
    mail -s "Relatorio de Execucao" gustavo <<< MonitoraProcesso.log
    sleep 3
  done
else
  until ps axu |grep $PROCESSO |grep -v grep > /dev/null
  do
    echo "$(date) : ATENCAO!!!! O $PROCESSO nao esta em execucao!" >> $LOG
    mail -s "Relatorio de Execucao" gustavo <<< MonitoraProcesso.log
    sleep 3
    echo
  done

fi
#echo "$(date): Finalizando Scrit $0" >> /tmp/msg_tmp
rm -f /tmp/msg_temp
#mail -s "Relatório de Execução" $ADMIN < /tmp/msg_tmp
