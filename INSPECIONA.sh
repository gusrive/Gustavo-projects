#!/usr/bin/env bash
#--------------------- Descrição ---------------------------#

#########################################
#Script ira fazer uma varredura para verificar quantos arquivos e quais os tipos
#
#./INSPECIONA.sh para rodar o script
#
#10/12/2020 Gustavo Sousa
#########################################

#---------------- VARIAVEIS --------------------------------#
OLDIFS=$' \t\n'
IFS=$'\n'
UIDMI=$(cat /etc/login.defs |grep ^UID_MIN |awk '{print $2}')
UIDMA=$(cat /etc/login.defs |grep ^UID_MAX |awk '{print $2}')

#------------------------ FUNÇÃO ---------------------------#
InspecionarArquivos () {
  for user in $(cat /etc/passwd)
  do
    USERID=$(echo $user | cut -d: -f3)
    USER=$(echo $user | cut -d: -f1)
    if [ $USERID -ge $UIDMI -a $USERID -le $UIDMA ]
    then
      ARQUI_JPG=$(find /home/$USER -name '*.jpg'|wc -l)
      ARQUI_MP4=$(find /home/$USER -name '*.mp4'|wc -l)
      ARQUI_MP3=$(find /home/$USER -name '*.mp3'|wc -l)
      echo "Usuário: $USER"
      echo "Arquivos JPG: $ARQUI_JPG"
      echo "Arquivos MP4: $ARQUI_MP4"
      echo "Arquivos MP3: $ARQUI_MP3"
      echo
    fi
  done
}
#------------------------ EXECUÇÃO -------------------------#
clear

echo "Inspeção de arquivos de usuárioas:"
echo
InspecionarArquivos
IFS=$OLDIFS # Variavel para retornar o padrao do IFS
