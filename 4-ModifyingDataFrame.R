
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


# Update the code in the last code block to add the columns avg_height, avg_weight, and rank_change_13_to_16 to dogs while dropping all existing columns.
dogs <- dogs %>%
   transmute(avg_height = (height_low_inches + height_high_inches)/2, avg_weight = (weight_low_lbs + weight_high_lbs)/2,
        rank_change_13_to_16 = rank_2016 - rank_2013)
head(dogs)


# check column names
original_col_names <- colnames(dogs)

# rename data frame columns
dogs <- dogs %>%
   rename(avg_height_inches = avg_height,
   avg_weight_lbs = avg_weight,
   popularity_change_13_to_16 = rank_change_13_to_16)

# check column names
new_col_names <- colnames(dogs)
new_col_names



