library(readr)
library(dplyr)

# load orders data
orders <- read_csv("orders.csv")
customers <- read_csv("customers.csv")
products <- read_csv("products.csv")

# inspect orders, customers and products here:
head(orders)
head(products)
head(customers)

# Examine the orders and products tables.
# What is the description of the product that was ordered in Order 3?
# Give your answer as a string assigned to the variable order_3_description.

order_3_description <- "thing-a-ma-jig"
