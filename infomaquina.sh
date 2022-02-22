#!/usr/bin/env bash
#--------------------- Descrição ---------------------------#
#########################################
# Script de coleta de informações de uma máquina Linux
#
#
#
# Para execução ./infomaquina.sh
# Gustavo Sousa 10/11/2020
##########################################

#---------------- VARIAVEIS --------------------------------#
HOST=$(hostname -A)
TEMP=$(uptime)
KERNEL=$(uname -r)
CPU=$(lscpu |grep CPU)
RAM="$(free -m |grep Mem | awk '{print $2}') MB"
DISCO=$(df -h)

#------------------------ FUNÇÃO ---------------------------#

#------------------------ EXECUÇÃO -------------------------#

clear
echo "====== Script de saída ======"
echo ""
echo "Nome da máquina:  $HOST"
echo ""
echo "Data / Hora: $(date)"
echo "============================"
echo "Tempo em atividade: $TEMP"
echo ""
echo "Versão de Kernel: $KERNEL"
echo ""
echo "Informações da CPU: "
echo ""
echo "$CPU"
echo ""
echo "Memória RAM: $RAM"
echo ""
echo "Partições: "
echo "$DISCO"
echo ""
