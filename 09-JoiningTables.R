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

# The id column of products stores the same information as the product_id column of orders. 
# Rename the id column of products to product_id. Save the updated data frame to products.

products <- products %>%
   rename(product_id = id)
inner_join(orders, products)
products

# Join orders and products. Save the result to the variable orders_products, and view it.

orders_products <- orders %>%
    inner_join(products)
orders_products

# Join the orders and products data frames using an inner_join(), with orders as the first argument and products as the second argument. 
# Also include the by argument to indicate which columns to join on. Save your results to the variable orders_products, and view it.

orders_products <- orders %>%
    inner_join(products,
               by = c('product_id' = 'id'))
orders_products

# Now join the products and orders data frames using an inner_join(), with products as the first argument and orders as the second argument. 
# Also include the by argument to indicate which columns to join on, as well as a suffix argument c('_product','_order'). 
# Save your results to the variable products_orders, and view it.

products_orders <- products %>%
    inner_join(orders,
               by = c('id' = 'product_id'),
               suffix = c('_product','_order'))
products_orders

# There are two hardware stores in town: Store A and Store B. 
# Store A’s inventory is in data frame store_a and Store B’s inventory is in data frame store_b. They have decided to merge into one big Super Store!
# Combine the inventories of Store A and Store B using a full join. Save the results to the variable store_a_b_full.

store_a_b_full <- store_a %>%
    full_join(store_b)
store_a_b_full

# Store A wants to find out what products they carry that Store B does not carry. Using a left join, combine store_a to store_b and save the results to left_a_b.
# The items with NA in left_a_b are carried by Store A, but not by Store B.

left_a_b <- store_a %>%
    left_join(store_b)
left_a_b

# Now, Store B wants to find out what products they carry that Store A does not carry. 
# Use a left join, to combine the two data frames but in the reverse order (i.e., store_b followed by store_a) and save the results to the variable left_b_a.
# Which items are not carried by Store A, but are carried by Store B?

left_b_a <- store_b %>%
    left_join(store_a)
left_b_a

# An ice cream parlor and a bakery have decided to merge.
# The bakery’s menu is stored in the data frame bakery, and the ice cream parlor’s menu is stored in the data frame ice_cream.
# Create their new menu by concatenating the two data frames into a data frame called menu.

menu <- bakery %>%
    bind_rows(ice_cream)
menu

# REVIEW 

# Cool T-Shirts Inc. just created a website for ordering their products. They want you to analyze two datasets for them:
# visits contains information on all visits to their landing page
# checkouts contains all users who began to checkout on their website
# Use head() to inspect each data frame.

visits <- read_csv('visits.csv')
checkouts <- read_csv('checkouts.csv')


head(visits)
head(checkouts)


# We want to know the amount of time from a user’s initial visit to the website to when they start to check out.
# Use inner_join to combine visits and checkouts and save it to the variable v_to_c. View v_to_c.

v_to_c <- visits %>%
    inner_join(checkouts)
v_to_c

# In order to calculate the time between visiting and checking out, define a column of v_to_c called time by pasting the following code into

v_to_c <- v_to_c %>%
  mutate(time = checkout_time - visit_time)
v_to_c

# To get the average time to checkout, paste the following code into 

avg_time_to_check <- v_to_c %>% 
  summarize(mean_time = mean(time))
avg_time_to_check



