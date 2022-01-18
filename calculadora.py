while True:
    print()
    numero1 = input('Digite um número: ')
    numero2 = input('Digite outro número: ')
    operador = input('Digite um operador (+ - * ou /): ')

    # Condição para ver se o usuário digitou números
    if not numero1.isnumeric() or not numero2.isnumeric():
        print('Você não digitou um número!')
        continue
    numero1 = int(numero1)
    numero2 = int(numero2)

    ## Condição dos operadores ##

    if operador == '+':
        print(numero1 + numero2)
    elif operador == '-':
        print(numero1 - numero2)
    elif operador == '*':
        print(numero1 * numero2)
    elif operador == '/':
        print(numero1 / numero2)
    else:
        print('Você não digitou um operador válido!')

    sair = input('Deseja sair? [s/n]')

    if sair == 's':
        break