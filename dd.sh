#!/usr/bin/env bash
#
# Gustavo Sousa - 20/05/2021
# ---------------------------------------------------------------------------- #
#  Este programa irá criar um arquivo com o nome e tamanho informados pelo
#  usuário.
#  Exemplos:
#      $ ./dd.sh
#      Neste exemplo o script será executado ...
# ---------------------------------------------------------------------------- #

LOCAL="/home/gustavo/Estudo/ProjetosShell/$arquivo"
# --------------------------------- VARIÁVEIS -------------------------------- #

# ---------------------------------------------------------------------------- #

# ---------------------------------- TESTES ---------------------------------- #

# ---------------------------------------------------------------------------- #

# --------------------------------- FUNÇÕES ---------------------------------- #
Inicio () {
  clear
  echo
  read -p "Informe o nome do arquivo a ser criado: " arquivo
  echo
  LOCAL="/home/gustavo/Estudo/ProjetosShell/$arquivo"
  read -p "Informe o tamanho que o arquivo deverá ter: " Tamanho
  echo
}

Verificar_Criar () {
  if [ -f "$LOCAL" ]
  then
    echo "O Arquivo $arquivo já existe!"
    exit 0
  else
    echo "O Arquivo $arquivo já existe!"
    echo "O arquivo $arquivo será criado!" ; sleep 3
    dd if=/dev/zero of=$arquivo.txt bs=$Tamanho count=1 ; sleep 3
    echo
    echo "Arquivo $arquivo criado!"
  fi
}
# ---------------------------------------------------------------------------- #

# --------------------------------- EXECUÇÃO --------------------------------- #
Inicio
Verificar_Criar
# ---------------------------------------------------------------------------- #
