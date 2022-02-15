install.packages("Hmisc")
require(Hmisc)

install.packages("dplyr")
require(dplyr)

#Primeira forma de criar o vetor

idade=c(10,10,10,10,30,30,30,30,30,30,30,30,50,50,50,50,70,70,70,90)
print(idade)
#Segunda forma de criar o vetor

idade2=c(rep(15,4),rep(26,6),rep(37,2),rep(74,3),85)
#rep(valor, qtd de vezes)

#Achando as Frequências simples

frequencia_simples=table(idade)
frequencia_simples2=table(idade2)
print(frequencia_simples)
print(frequencia_simples2)


#Visual excel

dados_simples=data.frame(frequencia_simples)
dados_simples2=data.frame(frequencia_simples2)
print(dados_simples)
print(dados_simples2)


#Frequência acumulada

frequencia_acumulada=cumsum(frequencia_simples)
frequencia_acumulada2=cumsum(frequencia_simples2)
print(frequencia_acumulada)
print(frequencia_acumulada2)

#Adicionando coluna com acumulada 

dados_simples$frequencia_acumulada=frequencia_acumulada


#Frequência relativa simples

frequencia_relativa_simples=frequencia_simples/sum(frequencia_simples)
frequencia_relativa_simples2=frequencia_simples2/sum(frequencia_simples2)
print(frequencia_relativa_simples)
print(frequencia_relativa_simples2)

#Adicionando a Frequência relativa simples

dados_simples$frequencia_relativa_simples=frequencia_relativa_simples

#Frequência relativa acumulada 

frequencia_relativa_acumulada=frequencia_acumulada/sum(frequencia_simples)
frequencia_relativa_acumulada2=frequencia_acumulada2/sum(frequencia_simples2)
print(frequencia_relativa_acumulada)
print(frequencia_relativa_acumulada2)

dados_simples$frequencia_relativa_acumulada=frequencia_relativa_acumulada

#Achando automaticamente a frequência simples e relativa simples

describe(idade)

