#!/usr/bin/env python3
#
# Primeiro teste curso python
#
#Gustavo Sousa 27/08/2021
######################################################

## Variaveis
nome = 'Gustavo'
idade = 28
altura = 1.80
peso = 78
nasceu = 2021 - idade
imc = peso / (altura**2)

### Codigo

print(f'{nome} tem {idade} anos, {altura} de altura e pesa {peso}kg.')
print(f'O IMC de {nome} é {imc:.2f}.')
print(f'{nome} nasceu em {nasceu}')
