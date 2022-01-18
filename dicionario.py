## Exemplo de como criar dicionário

d1 = dict(chave1='valor da chave', chave2='valor da outra chave') ## dict = função para criar dicionario
## chaves precisam ser unícas e ter própio valor
print(d1)  ## mostra apenas o indice informado entre []
del d1['chave1'] ## Deletar chve criada
#d1 ['novachave'] = 'adicionei uma outra chave'  ##Forma de atualizar ou inserir uma nova chave
d1.update({'nova_chave':'novo_valor'})## Forma de atualizar, concatenar outro dicionario ou adicionar uma nova chave
print(d1)

# d1.items() Irá iterar sobre os intens do dicionario
# d1.values() Irá iterar somente nos valores
# d1.keys() irá iterar somente nas chaves

## Transformar lista e tuplas em dicionario
# Para isso ocorrer, na lista se torna necessário ter pares
# lista = [
#     ['c1', 1],
#     ['c2', 2],
#     ['c3', 3],
# ]
#
# d3 = dict(lista)
