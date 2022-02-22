#!/usr/bin/env bash
#####################################################
#Script para verificar usuários "Humanos"
#
#para executar ./Verificauser.sh
#
#
#09/12/2020 Gustavo Sousa
######################################################
USUARIO=$(cat /etc/passwd | cut -d: -f1)
OLDIFS=$' \t\n'
IFS=$'\n'
UIDMI=$(cat /etc/login.defs |grep ^UID_MIN |awk '{print $2}')
UIDMA=$(cat /etc/login.defs |grep ^UID_MAX |awk '{print $2}')
clear

echo -e "USUÁRIO\t\tUID\tDIR HOME\t\tNOME OU DESCRIÇÃO"
echo ""
for user in $(cat /etc/passwd)
do
  USERID=$(echo $user | cut -d: -f3)
  if [ $USERID -ge $UIDMI -a $USERID -le $UIDMA ]
  then
    USER=$(echo $user | cut -d: -f1)
    ID=$(echo $user | cut -d: -f3)
    DIRHOME=$(echo $user | cut -d: -f6)
    DESC=$(echo $user | cut -d: -f5)
    echo -e "$USER\t\t$ID\t$DIRHOME\t\t$DESC"
  fi
done
IFS=$OLDIFS
