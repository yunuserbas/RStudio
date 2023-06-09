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

# Your boss at ShoeFly.com wants to gain a better insight into the orders of the most popular shoe_types.
# Group orders by shoe_type and filter to only include orders with a shoe_type that has been ordered more than 16 times. Save the result to most_pop_orders, and view it.
# You can include any of the summary functions as part of an argument to filter(), including n()!

most_pop_orders <- orders %>%
  group_by(shoe_type) %>%
  filter(n() > 16)
most_pop_orders

# You want to be able to tell how expensive each order is compared to the average price of orders with the same shoe_type.
# Group orders by shoe_type and create a new column named diff_from_shoe_type_mean that stores the difference in price between an orders price and the average price of orders with the same shoe_type.
# Save the result to diff_from_mean, and view it.
# Don’t forget to include na.rm = TRUE as an argument in the summary function you call!

diff_from_mean <- orders %>%
  group_by(shoe_type) %>%
  mutate(diff_from_shoe_type_mean = price - mean(price, na.rm = TRUE))
diff_from_mean

# Let’s examine some more data from ShoeFly.com. This time, in addition to the orders data, we’ll be looking at data about user visits to the website, stored in the page_visits data frame. 
# Inspect the columns of the data frames using the rendered notebook.

page_visits <- read_csv("page_visits.csv")
head(page_visits)

# Find the average price of an order in the orders data frame using summarize() and the mean() summary function. 
# Save the resulting data frame to a variable named average_price and view it.
# Don’t forget to include na.rm = TRUE as an argument in the call to mean()!

average_price <- orders %>%
    summarize(mean_val = mean(price, na.rm = TRUE))
average_price

# In the page_visits data frame, the column utm_source contains information about how users got to ShoeFly’s homepage. 
# For instance, if utm_source = Facebook, then the user came to ShoeFly by clicking on an ad on Facebook.com.
# Use a group_by statement to calculate how many visits came from each of the different sources. Save your answer to the variable click_source, and view it.

click_source <- page_visits %>%
   group_by(utm_source) %>%
   summarize(count = n())
click_source 

# Our Marketing department thinks that the traffic to our site has been changing over the past few months. 
# Use group_by to calculate the number of visits to our site from each utm_source for each month. 
# Save your answer to the variable click_source_by_month, and view it.
