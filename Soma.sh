#!/usr/bin/env bash

####################################################
# Nome: Soma.sh
# Primeiro exercicio
# Soma de valores
#
#
#10/11/2020
####################################################



clear
echo "========= Script de soma ========="
echo ""
echo "Digite um número: "
#read -p "Digite um número: " NUM1
read NUM1
echo ""
#echo "Digite outro número: "
read -p "Digite outro número: " NUM2
#read NUM2
echo "A soma de $NUM1 + $NUM2 é: $(($NUM1 + $NUM2))" # Outras contas funcionam
#echo "A soma dos números é: $(expr $NUM1 + $NUM2)"
#echo "A soma dos números é: $($NUM1 + $NUM2 |bc)"
echo ""
echo "Fim do Script"
