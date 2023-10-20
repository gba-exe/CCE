#----Populações----
cpu <- cpu.porcentagem$valorPercent
ram <- ram.porcentagem$valorPercent
disco <- disco.porcentagem$valorPercent
temperatura <- temperatura.c$temp

#----Samples----
testesCpu <- data.frame(
  teste1 = sample(cpu, 200, replace = TRUE),
  teste2 = sample(cpu, 200, replace = TRUE),
  teste3 = sample(cpu, 200, replace = TRUE),
  teste4 = sample(cpu, 200, replace = TRUE)
)

testesRam <- data.frame(
  teste1 = sample(ram, 200, replace = TRUE),
  teste2 = sample(ram, 200, replace = TRUE),
  teste3 = sample(ram, 200, replace = TRUE),
  teste4 = sample(ram, 200, replace = TRUE)
)

testesDisco <- data.frame(
  teste1 = sample(disco, 200, replace = TRUE),
  teste2 = sample(disco, 200, replace = TRUE),
  teste3 = sample(disco, 200, replace = TRUE),
  teste4 = sample(disco, 200, replace = TRUE)
)

testesTemperatura <- data.frame(
  teste1 = sample(temperatura, 200, replace = TRUE),
  teste2 = sample(temperatura, 200, replace = TRUE),
  teste3 = sample(temperatura, 200, replace = TRUE),
  teste4 = sample(temperatura, 200, replace = TRUE)
)

#----CPU----
dfCpu <- data.frame(teste = c("T1","T2","T3","T4"),
                    mean = 0, 	  	  	  	  	 
                    var= 0, 	  	  	  	  	 
                    variancia = 0, 	  	  	  	  	 
                    desvio = 0, 	  	  	  	  	 
                    sd= 0)
dfCpu


  #---Teste 1---
dados <- c(testesCpu$teste1)

variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)
variancia

desvio <- sqrt(variancia)
desvio

dfCpu$mean[dfCpu$teste == "T1"] <- mean(dados)
dfCpu$var[dfCpu$teste == "T1"] <- var(dados)
dfCpu$variancia[dfCpu$teste == "T1"] <- variancia
dfCpu$desvio[dfCpu$teste == "T1"] <- desvio
dfCpu$sd[dfCpu$teste == "T1"] <- sd(dados)

dfCpu

  #---Teste 2---
dados <- c(testesCpu$teste2)

variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)
variancia

desvio <- sqrt(variancia)
desvio

dfCpu$mean[dfCpu$teste == "T2"] <- mean(dados)
dfCpu$var[dfCpu$teste == "T2"] <- var(dados)
dfCpu$variancia[dfCpu$teste == "T2"] <- variancia
dfCpu$desvio[dfCpu$teste == "T2"] <- desvio
dfCpu$sd[dfCpu$teste == "T2"] <- sd(dados)

dfCpu

  #---Teste 3---
dados <- c(testesCpu$teste3)

variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)
variancia

desvio <- sqrt(variancia)
desvio



dfCpu$mean[dfCpu$teste == "T3"] <- mean(dados)
dfCpu$var[dfCpu$teste == "T3"] <- var(dados)
dfCpu$variancia[dfCpu$teste == "T3"] <- variancia
dfCpu$desvio[dfCpu$teste == "T3"] <- desvio
dfCpu$sd[dfCpu$teste == "T3"] <- sd(dados)

dfCpu

  #---Teste 4---
dados <- c(testesCpu$teste4)

variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)
variancia

desvio <- sqrt(variancia)
desvio

dfCpu$mean[dfCpu$teste == "T4"] <- mean(dados)
dfCpu$var[dfCpu$teste == "T4"] <- var(dados)
dfCpu$variancia[dfCpu$teste == "T4"] <- variancia
dfCpu$desvio[dfCpu$teste == "T4"] <- desvio
dfCpu$sd[dfCpu$teste == "T4"] <- sd(dados)

dfCpu

#----RAM----
dfRam <- data.frame(teste = c("T1","T2","T3","T4"),
                    mean = 0, 	  	  	  	  	 
                    var= 0, 	  	  	  	  	 
                    variancia = 0, 	  	  	  	  	 
                    desvio = 0, 	  	  	  	  	 
                    sd= 0)
dfRam


  #---Teste 1---
dados <- c(testesRam$teste1)

variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)
variancia

desvio <- sqrt(variancia)
desvio

dfRam$mean[dfRam$teste == "T1"] <- mean(dados)
dfRam$var[dfRam$teste == "T1"] <- var(dados)
dfRam$variancia[dfRam$teste == "T1"] <- variancia
dfRam$desvio[dfRam$teste == "T1"] <- desvio
dfRam$sd[dfRam$teste == "T1"] <- sd(dados)

dfRam

  #---Teste 2---
dados <- c(testesRam$teste2)

variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)
variancia

desvio <- sqrt(variancia)
desvio

dfRam$mean[dfRam$teste == "T2"] <- mean(dados)
dfRam$var[dfRam$teste == "T2"] <- var(dados)
dfRam$variancia[dfRam$teste == "T2"] <- variancia
dfRam$desvio[dfRam$teste == "T2"] <- desvio
dfRam$sd[dfRam$teste == "T2"] <- sd(dados)

dfRam

  #---Teste 3---
dados <- c(testesRam$teste3)

variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)
variancia

desvio <- sqrt(variancia)
desvio



dfRam$mean[dfRam$teste == "T3"] <- mean(dados)
dfRam$var[dfRam$teste == "T3"] <- var(dados)
dfRam$variancia[dfRam$teste == "T3"] <- variancia
dfRam$desvio[dfRam$teste == "T3"] <- desvio
dfRam$sd[dfRam$teste == "T3"] <- sd(dados)

dfRam

  #---Teste 4---
dados <- c(testesRam$teste4)

variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)
variancia

desvio <- sqrt(variancia)
desvio

dfRam$mean[dfRam$teste == "T4"] <- mean(dados)
dfRam$var[dfRam$teste == "T4"] <- var(dados)
dfRam$variancia[dfRam$teste == "T4"] <- variancia
dfRam$desvio[dfRam$teste == "T4"] <- desvio
dfRam$sd[dfRam$teste == "T4"] <- sd(dados)

dfRam

#----Disco----
dfDisco <- data.frame(teste = c("T1","T2","T3","T4"),
                    mean = 0, 	  	  	  	  	 
                    var= 0, 	  	  	  	  	 
                    variancia = 0, 	  	  	  	  	 
                    desvio = 0, 	  	  	  	  	 
                    sd= 0)
dfDisco


  #---Teste 1---
dados <- c(testesDisco$teste1)

variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)
variancia

desvio <- sqrt(variancia)
desvio

dfDisco$mean[dfDisco$teste == "T1"] <- mean(dados)
dfDisco$var[dfDisco$teste == "T1"] <- var(dados)
dfDisco$variancia[dfDisco$teste == "T1"] <- variancia
dfDisco$desvio[dfDisco$teste == "T1"] <- desvio
dfDisco$sd[dfDisco$teste == "T1"] <- sd(dados)

dfDisco

  #---Teste 2---
dados <- c(testesDisco$teste2)

variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)
variancia

desvio <- sqrt(variancia)
desvio

dfDisco$mean[dfDisco$teste == "T2"] <- mean(dados)
dfDisco$var[dfDisco$teste == "T2"] <- var(dados)
dfDisco$variancia[dfDisco$teste == "T2"] <- variancia
dfDisco$desvio[dfDisco$teste == "T2"] <- desvio
dfDisco$sd[dfDisco$teste == "T2"] <- sd(dados)

dfDisco

  #---Teste 3---
dados <- c(testesDisco$teste3)

variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)
variancia

desvio <- sqrt(variancia)
desvio



dfDisco$mean[dfDisco$teste == "T3"] <- mean(dados)
dfDisco$var[dfDisco$teste == "T3"] <- var(dados)
dfDisco$variancia[dfDisco$teste == "T3"] <- variancia
dfDisco$desvio[dfDisco$teste == "T3"] <- desvio
dfDisco$sd[dfDisco$teste == "T3"] <- sd(dados)

dfDisco

  #---Teste 4---
dados <- c(testesDisco$teste4)

variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)
variancia

desvio <- sqrt(variancia)
desvio

dfDisco$mean[dfDisco$teste == "T4"] <- mean(dados)
dfDisco$var[dfDisco$teste == "T4"] <- var(dados)
dfDisco$variancia[dfDisco$teste == "T4"] <- variancia
dfDisco$desvio[dfDisco$teste == "T4"] <- desvio
dfDisco$sd[dfDisco$teste == "T4"] <- sd(dados)

dfDisco

#----Temperatura----
dfTemperatura <- data.frame(teste = c("T1","T2","T3","T4"),
                    mean = 0, 	  	  	  	  	 
                    var= 0, 	  	  	  	  	 
                    variancia = 0, 	  	  	  	  	 
                    desvio = 0, 	  	  	  	  	 
                    sd= 0)
dfTemperatura


  #---Teste 1---
dados <- c(testesTemperatura$teste1)

variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)
variancia

desvio <- sqrt(variancia)
desvio

dfTemperatura$mean[dfTemperatura$teste == "T1"] <- mean(dados)
dfTemperatura$var[dfTemperatura$teste == "T1"] <- var(dados)
dfTemperatura$variancia[dfTemperatura$teste == "T1"] <- variancia
dfTemperatura$desvio[dfTemperatura$teste == "T1"] <- desvio
dfTemperatura$sd[dfTemperatura$teste == "T1"] <- sd(dados)

dfTemperatura

  #---Teste 2---
dados <- c(testesTemperatura$teste2)

variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)
variancia

desvio <- sqrt(variancia)
desvio

dfTemperatura$mean[dfTemperatura$teste == "T2"] <- mean(dados)
dfTemperatura$var[dfTemperatura$teste == "T2"] <- var(dados)
dfTemperatura$variancia[dfTemperatura$teste == "T2"] <- variancia
dfTemperatura$desvio[dfTemperatura$teste == "T2"] <- desvio
dfTemperatura$sd[dfTemperatura$teste == "T2"] <- sd(dados)

dfTemperatura

  #---Teste 3---
dados <- c(testesTemperatura$teste3)

variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)
variancia

desvio <- sqrt(variancia)
desvio



dfTemperatura$mean[dfTemperatura$teste == "T3"] <- mean(dados)
dfTemperatura$var[dfTemperatura$teste == "T3"] <- var(dados)
dfTemperatura$variancia[dfTemperatura$teste == "T3"] <- variancia
dfTemperatura$desvio[dfTemperatura$teste == "T3"] <- desvio
dfTemperatura$sd[dfTemperatura$teste == "T3"] <- sd(dados)

dfTemperatura

  #---Teste 4---
dados <- c(testesTemperatura$teste4)

variacaoDados <- dados - mean(dados)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)
variancia

desvio <- sqrt(variancia)
desvio

dfTemperatura$mean[dfTemperatura$teste == "T4"] <- mean(dados)
dfTemperatura$var[dfTemperatura$teste == "T4"] <- var(dados)
dfTemperatura$variancia[dfTemperatura$teste == "T4"] <- variancia
dfTemperatura$desvio[dfTemperatura$teste == "T4"] <- desvio
dfTemperatura$sd[dfTemperatura$teste == "T4"] <- sd(dados)

dfTemperatura

#----Tabelas Comparativas----
dfCpu
dfRam
dfDisco
dfTemperatura

print("CPU")
print(dfCpu)

print("RAM")
print(dfRam)

print("Disco")
print(dfDisco)


print("Temperatura")
print(dfTemperatura)








