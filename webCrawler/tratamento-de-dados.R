library(ggplot2)

#----Dados RAW----
temperatura <- dfClimaTempo$TEMPERATURA.MÁXIMA.NA.HORA.ANT.AUT...C.
temperatura[which(is.na(temperatura))] <- 0

umidade <- dfClimaTempo$UMIDADE.REL.MIN.NA.HORA.ANT.AUT....
umidade[which(is.na(umidade))] <- 0

#----Samples Dados----
testesTemperatura <- data.frame(
  teste1 = sample(temperatura, 100, replace = TRUE),
  teste2 = sample(temperatura, 100, replace = TRUE),
  teste3 = sample(temperatura, 100, replace = TRUE),
  teste4 = sample(temperatura, 100, replace = TRUE)
)

testesUmidade <- data.frame(
  teste1 = sample(umidade, 100, replace = TRUE),
  teste2 = sample(umidade, 100, replace = TRUE),
  teste3 = sample(umidade, 100, replace = TRUE),
  teste4 = sample(umidade, 100, replace = TRUE)
)

testesTemperatura

#----Tabelas Comparativas----

  #---Temperatura---
dfTemperatura <- data.frame(teste = c("T1","T2","T3","T4"),
                    mean = 0, 	  	  	  	  	 
                    var= 0, 	  	  	  	  	 
                    variancia = 0, 	  	  	  	  	 
                    desvio = 0, 	  	  	  	  	 
                    sd= 0)

      #---Teste 1---
dados <- testesTemperatura$teste1

variacaoDados <- dados - mean(dados, na.rm = TRUE)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)

desvio <- sqrt(variancia)

dfTemperatura$mean[dfTemperatura$teste == "T1"] <- mean(dados)
dfTemperatura$var[dfTemperatura$teste == "T1"] <- var(dados)
dfTemperatura$variancia[dfTemperatura$teste == "T1"] <- variancia
dfTemperatura$desvio[dfTemperatura$teste == "T1"] <- desvio
dfTemperatura$sd[dfTemperatura$teste == "T1"] <- sd(dados)

dfTemperatura
      
      #---Teste 2---
dados <- testesTemperatura$teste2

variacaoDados <- dados - mean(dados, na.rm = TRUE)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)

desvio <- sqrt(variancia)

dfTemperatura$mean[dfTemperatura$teste == "T2"] <- mean(dados)
dfTemperatura$var[dfTemperatura$teste == "T2"] <- var(dados)
dfTemperatura$variancia[dfTemperatura$teste == "T2"] <- variancia
dfTemperatura$desvio[dfTemperatura$teste == "T2"] <- desvio
dfTemperatura$sd[dfTemperatura$teste == "T2"] <- sd(dados)

dfTemperatura
      
      #---Teste 3---
dados <- testesTemperatura$teste3

variacaoDados <- dados - mean(dados, na.rm = TRUE)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)

desvio <- sqrt(variancia)

dfTemperatura$mean[dfTemperatura$teste == "T3"] <- mean(dados)
dfTemperatura$var[dfTemperatura$teste == "T3"] <- var(dados)
dfTemperatura$variancia[dfTemperatura$teste == "T3"] <- variancia
dfTemperatura$desvio[dfTemperatura$teste == "T3"] <- desvio
dfTemperatura$sd[dfTemperatura$teste == "T3"] <- sd(dados)

dfTemperatura
      
      #---Teste 4---
dados <- testesTemperatura$teste4

variacaoDados <- dados - mean(dados, na.rm = TRUE)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)

desvio <- sqrt(variancia)

dfTemperatura$mean[dfTemperatura$teste == "T4"] <- mean(dados)
dfTemperatura$var[dfTemperatura$teste == "T4"] <- var(dados)
dfTemperatura$variancia[dfTemperatura$teste == "T4"] <- variancia
dfTemperatura$desvio[dfTemperatura$teste == "T4"] <- desvio
dfTemperatura$sd[dfTemperatura$teste == "T4"] <- sd(dados)

dfTemperatura
  
  #---Umidade---
dfUmidade <- data.frame(teste = c("T1","T2","T3","T4"),
                    mean = 0, 	  	  	  	  	 
                    var= 0, 	  	  	  	  	 
                    variancia = 0, 	  	  	  	  	 
                    desvio = 0, 	  	  	  	  	 
                    sd= 0)

      #---Teste 1---
dados <- testesUmidade$teste1

variacaoDados <- dados - mean(dados, na.rm = TRUE)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)

desvio <- sqrt(variancia)

dfUmidade$mean[dfUmidade$teste == "T1"] <- mean(dados)
dfUmidade$var[dfUmidade$teste == "T1"] <- var(dados)
dfUmidade$variancia[dfUmidade$teste == "T1"] <- variancia
dfUmidade$desvio[dfUmidade$teste == "T1"] <- desvio
dfUmidade$sd[dfUmidade$teste == "T1"] <- sd(dados)

dfUmidade
      
      #---Teste 2---
dados <- testesUmidade$teste2

variacaoDados <- dados - mean(dados, na.rm = TRUE)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)

desvio <- sqrt(variancia)

dfUmidade$mean[dfUmidade$teste == "T2"] <- mean(dados)
dfUmidade$var[dfUmidade$teste == "T2"] <- var(dados)
dfUmidade$variancia[dfUmidade$teste == "T2"] <- variancia
dfUmidade$desvio[dfUmidade$teste == "T2"] <- desvio
dfUmidade$sd[dfUmidade$teste == "T2"] <- sd(dados)

dfUmidade
      
      #---Teste 3---
dados <- testesUmidade$teste3

variacaoDados <- dados - mean(dados, na.rm = TRUE)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)

desvio <- sqrt(variancia)

dfUmidade$mean[dfUmidade$teste == "T3"] <- mean(dados)
dfUmidade$var[dfUmidade$teste == "T3"] <- var(dados)
dfUmidade$variancia[dfUmidade$teste == "T3"] <- variancia
dfUmidade$desvio[dfUmidade$teste == "T3"] <- desvio
dfUmidade$sd[dfUmidade$teste == "T3"] <- sd(dados)

dfUmidade
      
      #---Teste 4---
dados <- testesUmidade$teste4

variacaoDados <- dados - mean(dados, na.rm = TRUE)
variacaoDados <- variacaoDados ^ 2

variancia <- mean(variacaoDados)

desvio <- sqrt(variancia)

dfUmidade$mean[dfUmidade$teste == "T4"] <- mean(dados)
dfUmidade$var[dfUmidade$teste == "T4"] <- var(dados)
dfUmidade$variancia[dfUmidade$teste == "T4"] <- variancia
dfUmidade$desvio[dfUmidade$teste == "T4"] <- desvio
dfUmidade$sd[dfUmidade$teste == "T4"] <- sd(dados)

dfUmidade


#----Gráficos e Insights----

ggplot(mapping = aes(testesUmidade$teste1, testesTemperatura$teste1)) +
  geom_point() +
  geom_smooth(method = "lm")

retas <- ggplot(mapping = aes(testesUmidade$teste1, testesTemperatura$teste1)) +
  geom_point() +
  geom_smooth(se = FALSE, method = "lm") +
  geom_hline(yintercept = mean(testesTemperatura$teste1))

retas

retas +
  geom_segment(aes(x = testesUmidade$teste1, y = testesTemperatura$teste1,
  xend = testesUmidade$teste1, yend = mean(testesTemperatura$teste1)), color="red")

retas +
  geom_segment(aes(x = testesUmidade$teste1, y = testesTemperatura$teste1,
  xend = testesUmidade$teste1, yend = predict(lm(testesTemperatura$teste1 ~ testesUmidade$teste1))), color="red")

hist(temperatura, xlab = "Temperatura", ylab = "Frequência", main = "Histograma de Temperatura")
hist(umidade, xlab = "Umidade", ylab = "Frequência", main = "Histograma de Umidade")
