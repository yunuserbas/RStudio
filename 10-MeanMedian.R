
# MEAN
# In this exercise, you will use R to find the average age of the first four authors in Le Monde’s top 100 books.

# 29, 49, 42, 43

# Add the values together, and set total equal to the answer. Print total.

total <- 29 + 49 + 42 + 43
print(total)


# Divide total by the number of values in the dataset, and set mean_value to the answer.
# Print mean_value. Keep that number in your head as you progress through the lesson.

mean_value <- total / 4
print(mean_value)

# import libraries
library(readr)
library(dplyr)

# Read author data
greatest_books = read_csv("top-hundred-books.csv")

# Set author ages to a vector
author_ages <- greatest_books$Ages

# Use R to calculate mean
average_age <- mean(author_ages)
print(average_age)

# MEDIAN
# Use R to calculate the median age of the top 100 authors
median_age <- median(author_ages)

# MODE
mode_age <- Mode(author_ages)



