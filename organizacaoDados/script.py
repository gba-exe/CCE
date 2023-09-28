import psutil as ps # pega dados da cpu
import time as t # tipo um setInterval
import pandas as pd
import os # compatibilidade com os sistemas

while True: # loop infinito
    t.sleep(1) # aguarda 1 segundo antes de executar o loop
    os.system('cls' if os.name == 'nt' else 'clear') # limpa tudo que foi printado no terminal
    times = [] # array que guarda os valores dos tempos da cpu
    percent = [] # array que guarda os valores de porcentagem da cpu

    for i in range(21): # for que pega os 20 primeiros valores dos tempos da cpu
        times += {ps.cpu_times()} # guarda os valores

    df = pd.DataFrame(times) # cria uma tabela com esses dados
    print(f"\033[32mTimes\n{'='*88}\n{df}\n{'='*88}\n") # printa os dados no console

    percent += {ps.cpu_times_percent()}
    df2 = pd.DataFrame(percent)
    print(f"Percent\n{'='*75}\n{df2}\n{'='*75}\n")
    print("\033[0m")

