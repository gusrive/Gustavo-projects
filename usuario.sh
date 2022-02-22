#!/usr/bin/env bash

###############################################
#Relatório do usuário
#
#Coletar informações sobre determinado
#Usuário
#
#
#./usuario para executar
#
#Data : 10/11/2020
###############################################

##  Teste condicional para consulta de usuário  ##
[ $# -eq 0 ] && echo "Nenhum parâmetro foi digitado" && exit 1
ls /home/$1 > /dev/null 2>&1 || echo "Usuário Inexistente"
ls /home/$1 > /dev/null 2>&1 || exit 1
#ls /home/$1 > /dev/null 2>&1 || { echo "Usuário Inexistente" ; exit 1; }

ID=$(id -u $1)
LIVRE=$(df -h /home/$1 | awk '{print $2}')
USADO=$(df -h /home/$1 | awk '{print $3}')
ULTLOG=$(lastlog |grep $1)

clear
echo "================== Script Relatorio do usuário ================="
echo ""
echo "Relatório do Usuário : $1"
echo ""
echo "UID: $ID"
echo "Nome ou Descrição: $1"
echo ""
echo "Total Livre no /home: $LIVRE"
echo ""
echo "Total Usado no /home: $USADO"
echo ""
echo "Ultimo Login: $ULTLOG"
echo ""
echo "Fim do Script"
exit 0
