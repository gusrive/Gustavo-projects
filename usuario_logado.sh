#!/usr/bin/env bash
#
# vim:ts=4:sw=4:et:ai:sts=4:filetype=sh
# $(basename 0).sh - Descrição do programa
#
# Autor:      Gustavo
# Manutenção:
#
# ---------------------------------------------------------------------------- #
#  Este programa irá cotar o último valor do Bitcoin com base na API xxxx
#
#  Exemplos:
#      $ ./usuario_logado.sh
#      Neste exemplo o script será executado ...
# ---------------------------------------------------------------------------- #


# --------------------------------- VARIÁVEIS -------------------------------- #


DATA=$(date +%Y-%m-%d)
# ---------------------------------------------------------------------------- #

# ---------------------------------- TESTES ---------------------------------- #

# ---------------------------------------------------------------------------- #

# --------------------------------- FUNÇÕES ---------------------------------- #
Verifica_user () {
  for user in $(whoami)
  do
    if [ ! -d /home/$usuario ]
    then
      echo "Usuário não existe!"
    elif [ "$user" = $usuario ]
    then
      echo "O usuário $usuario está logado no momento!"
      echo
      echo -e "NAME\t\tTIME"
      echo -e "$user\t\t$DATA"
    else
      echo "Usuário existe, mas não está logado !"

    fi
  done
}
# ---------------------------------------------------------------------------- #

# --------------------------------- EXECUÇÃO --------------------------------- #
clear
echo
read -p "Informe um usuario: " usuario
Verifica_user

# ---------------------------------------------------------------------------- #
