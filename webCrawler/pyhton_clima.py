# Aqui são feitos os imports das bibliotecas que usaremos
import csv # utilizada pra manipular e obter csvs
import requests # utilizada para criar e interagir com o browser
import zipfile # utilizada para extrair arquivos em zip

CSV_URL="https://portal.inmet.gov.br/uploads/dadoshistoricos/2023.zip" # aqui definimos o link do arquivo que queremos obter

with requests.Session() as s:
    download = s.get(CSV_URL) # baixamos o aquivo em csv utilizando a funcção get da biblioteca session (com o apelido s)
    print(download)
    with open('2023.zip', mode='wb') as f:
        f.write(download.content) # abrimos e guardamos o arquivo

with zipfile.ZipFile('2023.zip', mode='r') as zip:

    zip.extract('INMET_SE_SP_A771_SAO PAULO - INTERLAGOS_01-01-2023_A_30-09-2023.CSV', '/home/gba/computacao/SPTECH/CCE/webCrawler') #aqui extraímos o arquivo em zip e definimos o caminho em que ele deve ficar

    with open('/home/gba/computacao/SPTECH/CCE/webCrawler/INMET_SE_SP_A771_SAO PAULO - INTERLAGOS_01-01-2023_A_30-09-2023.CSV', 'r') as csvfile: # abrimos este arquivo

        reader = csv.reader(csvfile, delimiter=';') # definimos o delimitador de uma linha
        for row in reader:
            print(row) # lemos as linhas e printamos