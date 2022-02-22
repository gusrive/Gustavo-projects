#!/usr/bin/env bash
#
#
# $(basename 0).sh - Descrição do programa
#
# Autor:      Gustavo
# Criação: 16/02/2021
#
# ---------------------------------------------------------------------------- #
#  Este programa irá verificar a porcentagem de uso da swap. O mesmo irá enviar
#  e-mail caso chegue em uma determinada porcentagem
#  Exemplos:
#      $ ./VerificaSwap.sh
#      Neste exemplo o script será executado ...
# ---------------------------------------------------------------------------- #
# Histórico:
#
#   v1.0 16/02/2021, Gustavo:
#       - Início do programa
#       - Conta com a funcionalidade X
#   v1.1 xx/xx/2021, Robson:
#       - Alterado parametro XXXXX
# ---------------------------------------------------------------------------- #
# Testado em:
#   bash 5.0.3(1)
# ---------------------------------------------------------------------------- #

# --------------------------------- VARIÁVEIS -------------------------------- #
MAXIMO=80
MEDIO=50
SWAP="$(free -m |grep Swap | awk '{print $3}')"
EMAIL=gustavo
LOG="/tmp/VerificaSwap.tmp"
ARQLOG="/home/gustavo/Estudo/SWAP.log"
# ---------------------------------------------------------------------------- #

# ---------------------------------- TESTES ---------------------------------- #

# ---------------------------------------------------------------------------- #

# --------------------------------- FUNÇÕES ---------------------------------- #
Verificar () {
  for usado in $SWAP
  do
    if [ $usado -ge $MEDIO ]
    then
      echo "$(date) - $0 - O Diretorio Swap esta em $SWAP%" \
      >> $ARQLOG
    elif [ $usado -lt $MEDIO]
    then
      echo "$(date) - $0 - Diretorio Swap está OK" >> $ARQLOG
    fi
  done
}

Verificar2 () {
  for uso in $SWAP
  do
    if [ $uso -ge $MAXIMO ]
    then
      echo "$(date) - $0 - O Diretorio Swap esta em $SWAP%. Favor Verificar !!!" \
      >> $ARQLOG
      mail -s "Relatorio SWAP" gustavo <<< $ARQLOG
    fi
  done
}
# ---------------------------------------------------------------------------- #

# --------------------------------- EXECUÇÃO --------------------------------- #
Verificar
Verificar2

# ---------------------------------------------------------------------------- #
