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
# In the previous exercise, our finance department wanted to know the most expensive shoe that we sold.
# Now, they want to know the price of the most expensive shoe for each shoe_type (i.e., the price of the most expensive boot, the price of the most expensive ballet flat, etc.). 
# Name the column that shows the most expensive shoe prices max_price.
# Save your answer to the variable pricey_shoes, and view it.

pricey_shoes <- orders %>%
  group_by(shoe_type) %>%
  summarize(max_price = max(price, na.rm = TRUE))
pricey_shoes

# The inventory team wants to know how many of each shoe_type has been sold so they can forecast inventory for the future.
# Save your answer to the variable shoes_sold, and view it.

shoes_sold <- orders %>%
  group_by(shoe_type) %>%
  summarize(count = n())
shoes_sold 

# At ShoeFly.com, our Purchasing team thinks that certain shoe_type/shoe_color combinations are particularly popular this year (for example, blue ballet flats are all the rage in Paris).
# Find the total number of shoes of each shoe_type/shoe_color combination purchased using group_by, summarize() and n(). Name the aggregate count column count.
# Save your result to the variable shoe_counts, and view it.

shoe_counts <- orders %>%
  group_by(shoe_type, shoe_color) %>%
  summarize(count = n())
shoe_counts

# Find the mean price of each shoe_type/shoe_material combination purchased using group_by, summarize() and mean(). Assign the name mean_price to the calculated aggregate.
# Save your result to the variable shoe_prices, and view it.
# Don’t forget to include na.rm = TRUE as an argument in the summary function that you call!

shoe_prices <- orders %>%
  group_by(shoe_type, shoe_material) %>%
  summarize(mean_price = mean(price, na.rm = TRUE))
shoe_prices

