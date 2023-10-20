n = 20000
p = 200000

set.seed(2307)
idade = abs(round(rnorm(n, 35, 7),0))

set.seed(2307)
altura = abs(round(rnorm(n,1.50,0.1),2))

set.seed(2307)
peso = abs(round(rnorm(n,55,4),2))

set.seed(2307)
imc = peso/(altura^2)

summary(idade)
summary(altura)
summary(peso)
summary(imc)

hist (idade, main = "Histograma de Idade", ylab = "Frequência", xlab = "Idade (em anos completos)")
hist (altura, main = "Histograma de Altura", ylab = "Frequência", xlab = "Altura (em metros)")
hist (peso, main = "Histograma de Peso", ylab = "Frequência", xlab = "Peso (em quilos)")
hist (imc, main = "Histograma de IMC", ylab = "Frequência", xlab = "Índice de massa corporal")
