
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


