#!/usr/bin/env bash

################################################
#Script de operações
#
#Para execução ./OperaValores.sh
#
#
#
#17/11/2020 Gustavo Sousa
#################################################

clear
read -p "Informe o Valor 1: " VAR1
echo
read -p "Informe o valor 2: " VAR2
echo

# Menu
clear
echo "Escolha o tipo de operação: "
echo
echo "1 - Soma"
echo "2 - Subtração"
echo "3 - Divisão"
echo "4 - Multiplicação"
echo "5 - Sair"
echo
read -p "Opção: " opcao
echo

case "$opcao" in
  1)
  echo "Opção 1 escolhida"
  echo
  echo "A Soma de $VAR1 e $VAR2 é: $(($VAR1 + $VAR2))"
  ;;
  2)
  echo "Opção 2 escolhida"
  echo
  echo "$VAR1 menos $VAR2 é: $(($VAR1 - $VAR2))"
  ;;
  3)
  echo "Opção 3 selecionada"
  echo
  echo " $VAR1 divido por $VAR2 é: $(expr $VAR1 / $VAR2)"
  echo
  ;;
  4)
  echo "Opção 4 selecionada"
  echo
  echo "$VAR1 multiplicado por $VAR2 é: $(($VAR1 * $VAR2))"
  echo
  ;;
  5)
  echo "Opção 5 selecionada"
  echo
  exit 0
esac
