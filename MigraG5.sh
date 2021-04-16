#!/usr/bin/env bash
#--------------------- Descrição ---------------------------#
###########################################
# Script de porcentagem de uso dos diretórios /dev
#
#
#Gustavo Sousa 29/01/2021
#
#
#para rodar ./MigraG5.sh
###########################################
#------------------------ VARIAVEIS ------------------------#
PDSE=$(sed -i 's/177.126.174.36/X.X.X.X' /etc/base/variaveis)
24=$(sed -i 's/177.126.174.0/X.X.X.X' /etc/base/variaveis)
NIV=$(sed -i 's/177.126.174.63/X.X.X.X' /etc/base/variaveis)
ALOG=$(sed -i 's/177.126.174.27/X.X.X.X' /etc/base/variaveis)


#------------------------ FUNÇÃO ---------------------------#
#------------------------ EXECUÇÃO -------------------------#

echo "==========Script de Migracao============"
echo
echo "Escolha uma opcao: "
echo
echo "1 - PDSE"
echo "2 - Nivalmix"
echo "3 - Alog"
echo
read -p "Opção: " opcao
echo

case "$opcao" in
  1)
  echo "Alteração efetuada!" ; $PDSE ; $24
  reboot
  ;;
  2)
  echo "Alteração efetuada!" ; $NIV ; $24
  reboot
  ;;
  3)
  echo "Alteração efetuada!" ; $ALOG ; $24
  reboot
  ;;
esac
