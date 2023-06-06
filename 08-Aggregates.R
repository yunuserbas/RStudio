# load packages

library(readr)
library(dplyr)

# load order data

orders <- read_csv("orders.csv")

# ShoeFly.com has a new batch of orders stored in the data frame orders. Inspect the first 10 rows of the data frame using head().

head(orders, 10)

# Our finance department wants to know the price of the most expensive pair of shoes purchased. Save your answer to the variable most_expensive.

most_expensive <- orders %>%
   summarize(most_expensive = max(price))
most_expensive

# Add the following as an additional argument to max() so that it removes all missing values before computing the maximum value.

most_expensive <- orders %>%
   summarize(most_expensive = max(price, na.rm = TRUE))
most_expensive

# Our fashion department wants to know how many different colors of shoes we are selling. Save your answer to the variable num_colors.

num_colors <- orders %>%
   summarize(num_colors = n_distinct(shoe_color))
num_colors

## CALCULATING AGGREATE FUNTIONS!!!
