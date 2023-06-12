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
