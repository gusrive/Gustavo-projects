preco = float(input('Qual é o preço do produto? R$'))

if preco > 20 and preco < 60:
    novo = preco - (preco * 10 / 100)
    print (f'O produto que custava R${preco}, na promoção com desconto de 10% vai custar R${novo}')
else:
    print('Produtos com valor abaixo de R$20 e acima de R$60 não possuem desconto')
