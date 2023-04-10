
# load libraries
library(readr)
library(dplyr)


# read CSVs
grocery_1 <- read_csv('grocery_1.csv')
grocery_2 <- read_csv('grocery_2.csv')


# inspect data frames
head(grocery_1)
head(grocery_2)


summary(grocery_1)
summary(grocery_2)
print(colnames(grocery_1))
print(colnames(grocery_2))

# clean data frame
clean_data_frame <- 2

