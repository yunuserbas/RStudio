
# load libraries
library(readr)
library(dplyr)


# load data frame
dogs <- read_csv('dogs.csv')

# inspect data frame
head(dogs)

# add average height column
dogs <- dogs %>%
   mutate(avg_height = (height_low_inches + height_high_inches)/2)
head(dogs)


