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

# Examine the orders and customers tables.
# What is the phone_number of the customer in Order 5?
# Give your answer as a string assigned to the variable order_5_phone_number.

order_5_phone_number <- "112-358-1321"

# You are an analyst at Cool T-Shirts Inc. You are going to help them analyze some of their sales data.
# There are two data frames defined in the file notebook.Rmd:
#1 sales contains the monthly revenue for Cool T-Shirts Inc. It has two columns: month and revenue.
#2 targets contains the goals for monthly revenue for each month. It has two columns: month and target.

# Create a new data frame sales_vs_targets which contains the inner_join() of sales and targets.
sales <- read_csv("sales.csv")
targets <- read_csv("targets.csv")


head(sales)
head(targets)

# define sales_vs_targets here:
sales_vs_targets <- sales %>%
    inner_join(targets)
sales_vs_targets

# Cool T-Shirts Inc. wants to know the months when they crushed their targets.
# Filter sales_vs_targets to only include the rows where revenue is greater than target. Save these rows to the variable crushing_it.

crushing_it <- sales_vs_targets %>%
     filter(revenue > target)
crushing_it

# We have some more data from Cool T-Shirts Inc. The number of men’s and women’s t-shirts sold per month is in a file called men_women_sales.csv. 
# Load this data into a data frame called men_women, and inspect it using head().

men_women <- read_csv("men_women_sales.csv")
head(men_women)

# Join all three data frames (sales, targets, and men_women) into one big data frame called all_data. View all_data.

ll_data <- sales %>%
    inner_join(targets) %>%
    inner_join(men_women)
all_data

# Filter the rows of all_data to only include rows where:
# revenue is greater than target and women is greater than men.
# Save your answer to the variable results, and view it.

results <- all_data %>%
    filter(revenue > target) %>%
    filter(women > men)
results
