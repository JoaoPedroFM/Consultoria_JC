# CONSULTORIA JOVENS CONSTRUTORES
library(likert)
library(ggplot2)
library(readxl)
base_JC = read_excel("Base_final.xls")

#####################################################################################################
# Para Q1 ate Q6
consultoria_likert = base_JC[,c(4:20)]
consultoria_likert = consultoria_likert[,c(1:6)]
# Transformar em factor
consultoria_likert <- lapply(consultoria_likert, function(x){ factor(x, 
                             levels = c("1", "2", "3", "4", "5"), 
                             labels = c("Concordo Totalmente", "Concordo", "Neutro", 
                                        "Discordo", "Discordo Totalmente"))})
lik <- likert(as.data.frame(consultoria_likert))

# Opcao 1 de plot de concordancia x discordancia
plot(lik, wrap=60, text.size=3) + theme(axis.title.y = element_text(size = 10))

# Opcao 2
plot(lik, type = "heat", wrap = 60, text.size = 3) + theme(axis.title.y = element_text(size ="10"))

#####################################################################################################
# Para Q7 ate Q12
consultoria_likert = base_JC[,c(4:20)]
consultoria_likert = consultoria_likert[,c(7:12)]
# Transformar em factor
consultoria_likert <- lapply(consultoria_likert, function(x){ factor(x, 
                             levels = c("1", "2", "3", "4", "5"), 
                             labels = c("Muito Insatisfeito", "Insatisfeito", "Neutro", 
                                        "Satisfeito", "Muito Satisfeito"))})
lik <- likert(as.data.frame(consultoria_likert))

# Opcao 1 de plot de concordancia x discordancia
plot(lik, wrap=60, text.size=3) + theme(axis.title.y = element_text(size = 10))

# Opcao 2
plot(lik, type = "heat", wrap = 60, text.size = 3) + theme(axis.title.y = element_text(size ="10"))

#####################################################################################################
# Para Q13 ate Q17
consultoria_likert = base_JC[,c(4:20)]
consultoria_likert = consultoria_likert[,c(13:17)]
# Transformar em factor
consultoria_likert <- lapply(consultoria_likert, function(x){ factor(x, 
                             levels = c("1", "2", "3", "4", "5"), 
                             labels = c("Discordo Totalmente", "Discordo", "Neutro", 
                                        "Concordo", "Concordo Totalmente"))})
lik <- likert(as.data.frame(consultoria_likert))

# Opcao 1 de plot de concordancia x discordancia
plot(lik, wrap=60, text.size=3) + theme(axis.title.y = element_text(size = 10))

# Opcao 2
plot(lik, type = "heat", wrap = 60, text.size = 3) + theme(axis.title.y = element_text(size ="10"))

