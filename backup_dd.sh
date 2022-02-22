#!/usr/bin/env bash
#
# Gustavo Sousa - 19/05/2021
#
#
# ------------------------------- Descrição ---------------------------------- #
#  Este programa irá criar um arquivo de backup dos arquivos criados pelo script
#  dd.sh .
#  Exemplos:
#      $ ./backup_dd.sh
#      Neste exemplo o script será executado ...
# ---------------------------------------------------------------------------- #


# --------------------------------- VARIÁVEIS -------------------------------- #
DATA=$(date +%d-%m-%Y-%H.%M)
DATA2=$(date +%d/%m/%Y-%H.%M)
LOCAL="/home/gustavo/Estudo/ProjetosShell/$arquivo" # Tem que estar após o read
TAR="$arquivo-$DATA.tar" # Tem que estar após o read
LOG="/home/gustavo/Estudo/ProjetosShell/bloqueio.txt"
ENVIO="/home/gustavo/Estudo/ProjetosShell"

# --------------------------------- FUNÇÕES ---------------------------------- #
VerificaBackup () {
  if [ -f "$LOCAL" ]
  then
    echo "O backup será criado!" ; tar -cvf $ENVIO/$TAR $LOCAL
    echo "# Relatorio de backup #" >> $LOG
    echo >> $LOG
    echo "Iniciado em : $DATA2" >>$LOG
    echo "Finalizado em: $DATA2" >>$LOG
  else
    echo "Arquivo $arquivo não existe!"
  fi
}
# ---------------------------------------------------------------------------- #

# --------------------------------- EXECUÇÃO --------------------------------- #
clear
read -p "Informe o arquivo para iniciarmos o backup: " arquivo
echo
LOCAL="/home/gustavo/Estudo/ProjetosShell/$arquivo"
TAR="bkp_$arquivo_$DATA.tar"
VerificaBackup
# ---------------------------------------------------------------------------- #
