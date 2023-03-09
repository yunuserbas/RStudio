
# KNN algorithm used in this project.

# First : Find the non-legendary Pokemon that most closely resemble those that our champion normally uses. Explain your choice of number of neighbours.





library(ggplot2)
library(reshape2)
library(dplyr)
library(repr)
library(caret)


load("C:/Users/yunus/Downloads/pokemon.csv")

setwd("C:/Users/yunus/Downloads/")

d <- read.csv('pokemon.csv', header = TRUE)
head(d)

str(d)

d2 <- select(d, HP, Attack, Defense, Sp..Atk, Sp..Def, Speed, Generation, Legendary)
head(d2)


set.seed(63)
trainIndex <- createDataPartition(d2$Legendary, p = 0.50, list = FALSE)

train <- d2[ trainIndex, ]
test <- d2[ -trainIndex, ]



# KNN

set.seed(63)
knnFit <- train(Legendary ~ .,
                data = d2,
                method = "knn",
                preProcess = c("center", "scale"))
knnFit


plot(knnFit)



