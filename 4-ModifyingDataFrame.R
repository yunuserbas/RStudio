
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

# add average height, average weight and rank change columns
dogs <- dogs %>%
  mutate(avg_height = (height_low_inches + height_high_inches)/2)

dogs <- dogs %>%
  mutate(avg_weight = (weight_low_lbs + weight_high_lbs)/2, rank_change_13_to_16 = rank_2016 - rank_2013)
head(dogs)
