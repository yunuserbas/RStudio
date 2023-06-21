
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

# Defining the variance of the population mean 

variance <- function(x) mean((x-mean(x))^2)

teacher_one_grades <- c(80.24, 81.15, 81.29, 82.12, 82.52, 82.54, 82.76, 83.37, 83.42, 83.45, 83.47, 83.79, 83.91, 83.98, 84.03, 84.69, 84.74, 84.89, 84.95, 84.95, 85.02, 85.18, 85.53, 86.29, 86.83, 87.29, 87.47, 87.62, 88.04, 88.5)
teacher_two_grades <- c(65.82, 70.77, 71.46, 73.63, 74.62, 76.53, 76.86, 77.06, 78.46, 79.81, 80.64, 81.61, 81.84, 83.67, 84.44, 84.73, 84.74, 85.15, 86.55, 88.06, 88.53, 90.12, 91.27, 91.62, 92.86, 94.37, 95.64, 95.99, 97.69, 104.4)

# Scroll down in the code to find where we’ve definied teacher_one_variance and teacher_two_variance. 
# Set those variables equal to the variance of each dataset using the variance() function.

teacher_one_variance <- variance(teacher_one_grades)
teacher_two_variance <- variance(teacher_two_grades)

# STANDARD DEVIATION
# The variances are stored in variables named nba_variance and okcupid_variance.
# Calculate the standard deviation by taking the square root of nba_variance and store it in the variable nba_standard_deviation. 
# Do the same for the variable okcupid_standard_deviation.

# Importing data and calculating variance
load("lesson_data.Rda")
variance <- function(x) mean((x-mean(x))^2)

nba_variance <- variance(nba_data)
okcupid_variance <- variance(okcupid_data)

# Change these variables to be the standard deviation of each dataset.
nba_standard_deviation <- nba_variance ^ 0.5
okcupid_standard_deviation <- okcupid_variance ^ 0.5

