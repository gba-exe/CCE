name<- readline(prompt = "Digite seu nome: ")
print(name)

peso<- readline("Informe seu peso: ")
peso <- as.double(peso)
print(peso)

altura<- readline("Informe sua altura: ")
altura <- as.double(altura)
print(altura)

IMC<- peso/(altura**2)
print(paste("Seu IMC é de: ", round(IMC,2)))

typeof(name)
typeof(peso)
typeof(peso)

n<- 20000
p<- 200000

set.seed(2307)
idade <- abs(round(rnorm(n, 35, 7),0))
summary(idade)

hist(idade,
       main = "Histograma da idade",
       ylab = "Frequência",
       xlab= "Idade (em anos completos)")

table(idade)
plot(table(idade))

set.seed(2307)
altura <- abs(round(rnorm(n, 1.50, 0.1), 2))
summary(altura)

hist(altura,
     main = "Histograma da altura",
     ylab = "Freqüência",
     xlab = "Altura (em metros)")

table(altura)
plot(table(altura))

set.seed(2307)
peso <- abs(round(rnorm(n, 55, 4), 2))
summary(peso)

hist(peso,
     main = "Histograma do peso",
     ylab = "Freqüência",
     xlab = "Peso (em Kg)")

table(peso)
plot(table(peso))

imc <- round(peso/altura^2, 2)
summary(imc)

hist(imc,
     main = "Histograma do IMC",
     ylab = "Freqüência",
     xlab = "IMC")

table(imc)
plot(table(imc))

set.seed(2307)
salario <- abs(round(rnorm(n, 3000, 400), 2))
summary(salario)

hist(salario,
     main = "Histograma do salário mensal",
     ylab = "Freqüência",
     xlab = "Salário mensal (em R$)")

table(salario)
plot(table(salario))

set.seed(2307)
pop.carros <- rep(c(0,1,2,3), p)
pop.carros

set.seed(2307)
carros <- sample(pop.carros,n)
rm(pop.carros)
summary(carros)

hist(carros,
     main = "Histograma de carros",
     ylab = "Freqüência",
     xlab = "Qtd. de Carros")


table(carros)
plot(table(carros))

set.seed(2307)
pop.filhos<-rep(c(0,1,2),p)
pop.filhos

set.seed(2307)
filhos <- sample(pop.filhos, n)
rm(pop.filhos)
summary(filhos)

hist(filhos,
     main = "Histograma de filhos",
     ylab = "Freqüência",
     xlab = "Qtd. de Filhos")

table(filhos)
plot(table(filhos))


set.seed(2307)
pop.escolaridade <- rep(c(0, 1, 2, 3, 4, 5, 6), p)

set.seed(2307)
escolaridade.temp <- sample(pop.escolaridade, n)

escolaridade <- factor(escolaridade.temp,
                         levels = c(0, 1, 2, 3, 4, 5, 6),
                         labels = c("Analfabeto", "1º Grau", "2º Grau", "3º Grau",
                                    "Mestrado", "Doutorado", "PósDoc"),
                         ordered = TRUE
                         )

rm(pop.escolaridade, escolaridade.temp)
str(escolaridade)

summary(escolaridade)

table(escolaridade)
plot(table(escolaridade))

set.seed(2307)
fumante.n <- rbinom(n, 1, .40)
fumante.f <- factor(fumante.n,
                      levels = c(0, 1),
                      labels = c("não", "sim"),
                      ordered = TRUE)
str(fumante.f)
summary(fumante.f)
str(fumante.n)
mean(fumante.n)

table(fumante.f)
table(fumante.n)
plot(fumante.f)

pop.sexo <- rep(c(1, 2), p)
set.seed(2307)
sexo.temp <- sample(pop.sexo, n)
sexo <- factor(sexo.temp,
                 levels = c(1, 2),
                 labels = c("M", "F"),
                 ordered = FALSE)
rm(pop.sexo, sexo.temp)
str(sexo)

table(sexo)
plot(sexo)

pop.profissao <- rep(0:2, p)
set.seed(2307)
profissao.temp <- sample(pop.profissao, n)
profissao <- factor(profissao.temp,
                      levels = c(0, 1, 2),
                      labels = c("Humanas", "Exatas", "Biológicas"),
                      ordered = FALSE
                      )
rm(pop.profissao, profissao.temp)
str(profissao)

table(profissao)
plot(profissao)

df <- data.frame(id = 1:n,
                 altura,
                 peso,
                 imc,
                 sexo,
                 escolaridade,
                 profissao,
                 fumante.f,
                 fumante.n,
                 salario,
                 carros,
                 filhos
                 )
str(df)
head(df)

write.csv(df, file="projeto01.csv", fileEncoding = "UTF-8")

summary(df$altura)
summary(df$peso)
summary(df$imc)
summary(df$sexo)
summary(df$escolaridade)
summary(df$profissao)
summary(df$fumante.f)
summary(df$fumante.n)
summary(df$salario)
summary(df$carros)
summary(df$filhos)









