import psutil as ps # pega dados da cpu
import time as t # tipo um setInterval
import pandas as pd # tratamento de dados
import os # compatibilidade com os sistemas

cor = {
    'verde':"\033[32m",
    'amarelo':"\033[33m",
    'ciano':"\033[36m",
    'default':"\033[0m"
}

while True: # loop infinito
    t.sleep(2) # aguarda 2 segundo(s) antes de executar o loop
    os.system('cls' if os.name == 'nt' else 'clear') # limpa tudo que foi printado no terminal
    times = [] # array que guarda os valores dos tempos da cpu
    percent = [] # array que guarda os valores de porcentagem da cpu

    for i in range(21): # for que pega os 20 primeiros valores dos tempos da cpu
        times += {ps.cpu_times()} # guarda os valores

    df = pd.DataFrame(times) # cria uma tabela com esses dados
    print(cor['verde'] +f"\t\t\tTimes\n"+ #Título
          cor['verde'] +f"{'='*84}\n"+ #Linha
          cor['ciano']+f"{df}\n"+ #Printa os dados no console
          cor['amarelo']+f"{'='*84}\n"+cor['default']) #Linha 
    

    percent += {ps.cpu_times_percent()}
    df2 = pd.DataFrame(percent)
    print(cor['amarelo'] +f"\t\t\tPercent\n"+ #Título
          f"{'='*75}\n"+ #Linha
          f"{df2}\n"+ #Printa os dados no console
          f"{'='*75}\n"+ #Linha
          cor['default']) #Volta para cor padrão do terminal
