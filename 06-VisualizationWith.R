
# load libraries and data
library(readr)
library(dplyr)
library(ggplot2)
movies <- read_csv("imdb.csv")


# Create a new variable named viz and assign it the value of a new ggplot object that you create by invoking the ggplot() call and assigning it the dataframe movies as the data argument.
# After you’ve defined viz you need to state the variable name on a new line in order to see it.
# Click run and watch your code render an empty canvas. Even though no data is displayed, the data is bound to the viz ggplot object!

viz <- ggplot(data = movies)
viz
