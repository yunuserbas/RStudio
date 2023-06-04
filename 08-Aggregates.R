# load packages

library(readr)
library(dplyr)

# load order data

orders <- read_csv("orders.csv")

# ShoeFly.com has a new batch of orders stored in the data frame orders. Inspect the first 10 rows of the data frame using head().

head(orders, 10)


