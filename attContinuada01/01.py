import random

print("""
      ************************                                                         
      
      ** Um questionário simples de matemática **                                                         
      
      ************************                                                         
      
      1. Adição                                                                      
      
      2. Subtração                                                                   
      
      3. Multiplicação                                                                
      
      4. Divisão Inteira                                                              
      
      5. Sair                                                                          
      
      ------------------------ 
      """)

escolha = input("Digite sua escolha: ")

perguntas = 0
acertos = 0

while True:
    n1 = round(random.random()*10)
    n2 = round(random.random()*10)

    print("Digite sua resposta: ")
    if escolha == '1':
        resposta = input(f"{n1} + {n2} = ")
        perguntas += 1
        if (n1 + n2 == int(resposta)):
            acertos += 1
    if escolha == '2':
        resposta = input(f"{n1} - {n2} = ")
        perguntas += 1
        if (n1 - n2 == int(resposta)):
            acertos += 1
    if escolha == '3':
        resposta = input(f"{n1} x {n2} = ")
        perguntas += 1
        if (n1 * n2 == int(resposta)):
            acertos += 1
    if escolha == '4':
        resposta = input(f"{n1} / {n2} = ")
        perguntas += 1
        if (n1 / n2 == int(resposta)):
            acertos += 1
    if escolha == '5':
        break

    corrigir = input("Corrigir? (s/n): ")

    if(corrigir == 's'):
        total = (acertos * 100) / perguntas

        print(f"""
        .........                                        

        Sua pontuação é {total}%. Obrigado.  
        """)
        break