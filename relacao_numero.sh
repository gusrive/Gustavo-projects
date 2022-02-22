#!/usr/bin/env bash
#
# vim:ts=4:sw=4:et:ai:sts=4:filetype=sh
# $(basename 0).sh - Descrição do programa
#
# Autor:      Gustavo
# Manutenção:
#
# ---------------------------------------------------------------------------- #
#  Este programa irá comparar dois números
#
#  Exemplos:
#      $ ./relacao_numero
#      Neste exemplo o script será executado ...
# ---------------------------------------------------------------------------- #
# Histórico:
#
#   v1.0 xx/xx/2021, Robson:
#       - Início do programa
#       - Conta com a funcionalidade X
#   v1.1 xx/xx/2021, Robson:
#       - Alterado parametro XXXXX
# ---------------------------------------------------------------------------- #
# Testado em:
#   bash 5.0.3(1)
# ---------------------------------------------------------------------------- #

# ---------------------------------------------------------------------------- #

# --------------------------------- VARIÁVEIS -------------------------------- #
#VAR1=$1
#VAR2=$2
# ---------------------------------------------------------------------------- #

# ---------------------------------- TESTES ---------------------------------- #

# ---------------------------------------------------------------------------- #

# --------------------------------- FUNÇÕES ---------------------------------- #
Igualdade () {
  if [ $VAR1 -eq $VAR2 ]
  then
    echo " $VAR1 e $VAR2 são iguais!"
    exit 0
  fi
}

Maior_Menor () {
  if [ $VAR1 -ge $VAR2 ]
  then
    echo " $VAR1 é maior que $VAR2 !"
    exit 0
  else
    echo " $VAR2 é maior que $VAR1"
  fi
}
# ---------------------------------------------------------------------------- #

# --------------------------------- EXECUÇÃO --------------------------------- #
clear
echo
read -p "Informe um número: " VAR1
echo
read -p "Informe outro número: " VAR2

Igualdade
Maior_Menor
# ---------------------------------------------------------------------------- #
