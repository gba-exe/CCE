from pprint import pprint
import inquirer

isRunning = True if input("Quer começar? ").lower() == "s" else False

while isRunning:
    perguntas = [
        inquirer.List(
            "opcao",
            message="Que tipo de calculadora você quer usar?",
            choices=["Simples", "AND", "Entre faixas"],
        ),
    ]

    respostas = inquirer.prompt(perguntas)
    
    if respostas == {'opcao': 'Simples'}:
        peso=float(input('Quanto você pesa em Kg? (kg) '))
        altura=float(input('Quanto você mede em altura? (m)'))
        IMC = peso/(altura**2)
        print('O seu IMC é de {:.1f}'.format(IMC))

    elif respostas == {'opcao': 'AND'}:
        peso=float(input('Quanto você pesa em Kg? (kg) '))
        altura=float(input('Quanto você mede em altura? (m)'))
        IMC = peso/(altura**2)
        print('O seu IMC é de {:.1f}'.format(IMC))
        if IMC < 18.5:
            print('Diagnóstico: Abaixo do peso normal')
        elif IMC >=18.5 and IMC <25:
            print('Diagnóstico: peso normal')
        elif IMC >=25 and IMC <30:
            print('Diagnóstico: sobrepeso')
        elif IMC >=30 and IMC <40:
            print('Diagnóstico: obeso')
        elif IMC >=40:
            print('Diagnóstico: obesidade mórbida')

    else:
        peso = float(input('Quanto você pesa em Kg? (kg) '))

        altura = float(input('Quanto você mede em altura? (m)'))
        
        IMC = peso/(altura**2)

        if IMC < 18.5:
            print('Diagnóstico: Abaixo do peso normal')
        elif 18.5 <= IMC <25:
            print('Diagnóstico: peso normal')
        elif 25 <= IMC <30:
            print('Diagnóstico: sobrepeso')
        elif 30 <= IMC <40:
            print('Diagnóstico: obeso')
        elif IMC >=40:
            print('Diagnóstico: obesidade mórbida')
        
        print('O seu IMC é de {:.1f}'.format(IMC))

    if input('Você quer verificar outro IMC?').lower() == 'n':
        isRunning = False
        