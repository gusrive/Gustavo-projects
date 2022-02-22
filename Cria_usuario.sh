#!/usr/bin/env bash
#
# vim:ts=4:sw=4:et:ai:sts=4:filetype=sh
# $(basename 0).sh - Descrição do programa
#
# Autor:      Gustavo
# Manutenção:
#
# ---------------------------------------------------------------------------- #
#  Este programa irá criar um usuário de acordo com o parâmetro informado. Caso
# já possua um ira informar na tela.
#  Exemplos:
#      $ ./Cria_usuario.sh
#      Neste exemplo o script será executado ...
# ---------------------------------------------------------------------------- #


# --------------------------------- VARIÁVEIS -------------------------------- #

# ---------------------------------------------------------------------------- #


# --------------------------------- FUNÇÕES ---------------------------------- #
Cria_usuario () {
  if [ -d /home/$usuario ]
  then
    echo "O usuário $usuario já existe!"
    exit 0
  else
    echo "O usuário $usuario será criado!"; adduser $usuario
  fi
}
# ---------------------------------------------------------------------------- #

# --------------------------------- EXECUÇÃO --------------------------------- #
clear
echo
read -p "Informe um usuario: " usuario
Cria_usuario

# ---------------------------------------------------------------------------- #
