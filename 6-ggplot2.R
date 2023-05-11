

# The methods used in this project follow:

# geom_line()

# geom_point()

# geom_dotplot()

# geom_histogram()

# geom_bar()

# geom_boxplot()

# coord_polar()



install.packages("tidyverse")

library(tidyverse)

setwd("C:/Users/yunus/Downloads/")
pokemon <- read.csv("pokemon.csv")
head(pokemon)

# Example using geom_line():
 ggplot(pokemon, aes(x = Attack, y = Defense, color = Legendary)) + geom_line()

# Example using geom_point():
ggplot(pokemon, aes(x = HP, y = Speed, color = Type.1)) + geom_point()

# Example using geom_dotplot():
 ggplot(pokemon, aes(x = Type.1, y = Sp..Atk)) + geom_dotplot(binaxis = "y", stackdir = "center")

# Example using geom_histogram():
ggplot(pokemon, aes(x = Speed)) + geom_histogram(binwidth = 0.1, fill = "blue", color = "white")

# Example using geom_bar():
ggplot(pokemon, aes(x = Generation, fill = Type.1)) + geom_bar(position = "dodge")

# Example using geom_boxplot():
ggplot(pokemon, aes(x = Type.1, y = Speed)) + geom_boxplot(fill = "orange", color = "black")

# Example using coord_polar():
ggplot(pokemon, aes(x = Type.1, fill = Generation)) +
geom_bar() +
coord_polar()



