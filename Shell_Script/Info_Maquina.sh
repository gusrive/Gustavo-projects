#!/usr/bin/env bash
#--------------------- Descrição ---------------------------#
###########################################
# Script de porcentagem de uso dos diretórios /dev
#
#
#Gustavo Sousa 08/01/2024
#
#
#para rodar ./Crontab_dev.sh
###########################################
#---------------- VARIAVEIS --------------------------------#

#------------------------ FUNÇÃO ---------------------------#
#------------------------ EXECUÇÃO -------------------------#

echo "================= Informações da Máquina =================="
echo "Nome da máquina: "$(hostname)
echo "Data e hora atual: " $(date)
echo "==========================================================="
echo
echo "Maquina ativa a: " $(uptime | awk {'print $3" "$4'})
echo "Versão do Kernel: "$(uname -r)
echo "CPUs: " $(cat /proc/cpuinfo |grep "model name" |wc -l)
echo "Quantidade de CPUs/Core: " 
echo "Modelo de CPU: " $(cat /proc/cpuinfo/ |grep "model name"|head -n1|cut -c14-)
echo "Memória total: " $(expr $(cat /proc/meminfo |grep MemTotal|tr -d ' '|cut -d: -f2|tr -d kB) / 1024) 
echo
echo "Partições: "
echo $(df -h|egrep -v '(tmpfs|udev)')

