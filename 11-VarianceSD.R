
# difference = X − μ

# Let’s find the difference between each of these data points and the mean. We’ve created a variable for each difference. 
# Start with difference_one. Change the value of difference_one — it should be equal to the first value in the data set minus mean.

# load data
grades <- c(88, 82, 85, 84, 90)
mean <- mean(grades)

# Change these five variables
difference_one <- 88 - mean
difference_two <- 82 - mean
difference_three <- 85 - mean
difference_four <- 84 - mean
difference_five <- 90 - mean

# Sum the five variables difference_one through difference_five and store the result in the variable difference_sum.

difference_sum <- difference_one + difference_two + difference_three + difference_four + difference_five

# Divide difference_sum by 5 and store the result in the variable named average_difference.

average_difference <- difference_sum / 5

# Square each of the values stored in the variables difference_one through difference_five. 
# In R, to square a number, use the ^ operator. The code below gives you an example of squaring the variable a.

difference_one <- (88 - mean) ^ 2
difference_two <- (82 - mean) ^ 2
difference_three <- (85 - mean) ^ 2
difference_four <- (84 - mean) ^ 2
difference_five <- (90 - mean) ^ 2



