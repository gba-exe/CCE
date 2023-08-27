import psutil as ps # pega dados da cpu
import time as t # tipo um setInterval
import pandas as pd # tratamento de dados
import os # compatibilidade com os sistemas

corBg = {
    'verde':"\033[32m",
    'amarelo':"\033[43m",
    'ciano':"\033[46m",
    'default':"\033[0m"
}

while True: # loop infinito
    t.sleep(2) # aguarda 1 segundo antes de executar o loop
    os.system('cls' if os.name == 'nt' else 'clear') # limpa tudo que foi printado no terminal
    times = [] # array que guarda os valores dos tempos da cpu
    percent = [] # array que guarda os valores de porcentagem da cpu

    for i in range(21): # for que pega os 20 primeiros valores dos tempos da cpu
        times += {ps.cpu_times()} # guarda os valores

    df = pd.DataFrame(times) # cria uma tabela com esses dados
    print(corBg['verde'] +f"\t\tTimes\n"+ #Título
          corBg['verde'] +f"{'='*84}\n"+ #Linha
          corBg['ciano']+f"{df}\n"+ # printa os dados no console
          corBg['amarelo']+f"{'='*84}\n"+corBg['default']) #Linha 
    

    percent += {ps.cpu_times_percent()}
    df2 = pd.DataFrame(percent)
    print(corBg['amarelo'] +f"Percent\n{'='*75}\n{df2}\n{'='*75}\n"+ corBg['default'])
