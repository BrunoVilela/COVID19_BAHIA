# Covid-19: analises Bahia
# autor: Bruno Vilela

# Pacotes
library(coronabr) # Download covid para o Brasil
library(tidyverse)

# Download dados covid Bahia
dados <- get_corona_br(uf = "BA")
covid <-  as_tibble(dados) 
  

# Checar Salvador
covid %>%
  ggplot(aes(x = date, y = confirmed, color = city)) +
  geom_line() +
  ggtitle("Casos de COVID-19 em Salvador-BA") +
  ylab("Casos confirmados") +
  xlab("Data") +
  theme_classic()

