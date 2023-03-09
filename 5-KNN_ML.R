
# KNN algorithm used in this project.

# First : Find the non-legendary Pokemon that most closely resemble those that our champion normally uses. Explain your choice of number of neighbours.

load("C:/Users/yunus/Downloads/pokemon.csv")

setwd("C:/Users/yunus/Downloads/")

d <- read.csv('pokemon.csv', header = TRUE)
head(d)

str(d)

d2 <- select(d, HP, Attack, Defense, Sp..Atk, Sp..Def, Speed, Generation, Legendary)
head(d2)
