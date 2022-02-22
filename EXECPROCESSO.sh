#!/usr/bin/env bash
#--------------------- Descrição ---------------------------#
# O script vai verificar se o processo informado esta ativo, se estiver
# vai mostrar que esta em execucao e tambem se não estiver
#
#09/12/2020 Gustavo Sousa

#---------------- VARIAVEIS --------------------------------#
# A variavel vai recebe o valor do read e inseri-lo na condicao
#PROAT=$(ps axu |grep $PROCESSO |grep -v grep |wc -l)
#------------------------ FUNÇÃO ---------------------------#
ProcessoAtivo () {
  if [ $PROAT -gt 0 ]
  then
    while [ $PROAT -gt 0 ]
    do
      echo "O $PROCESSO está em execução!"
      sleep 3
    done
  else
    until ps axu |grep $PROCESSO |grep -v grep > /dev/null
    do
      echo "ATENÇÃO!!!! O $PROCESSO não está em execução!"
      sleep 3
      echo
    done

  fi
}
#------------------------ EXECUÇÃO -------------------------#

clear

read -p "Informe o nome do processo: " PROCESSO

PROAT=$(ps axu |grep $PROCESSO |grep -v grep |wc -l)
ProcessoAtivo
