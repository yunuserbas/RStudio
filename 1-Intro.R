
###################################################
# R script to learn the basics of R programming   #
# To understand the strengths and weaknesses of R #                         
###################################################


# Mission 1: Display the message "Hello Python". You will need to use a str variable that is passed as a print parameter.


message <- "Hello R"
cat(message)



# Mission 2: Calculate the result of this equation: 25 * 4 + 9 / 3 in the R code block.

25 * 4 + 9 / 3

# Mission 3: In order to print a value, you must put the value inside the following syntax: print(). Print your name as a character string.
# Print your age as a numeric type.
# On a new line of code, print your age as a character type.

print('Yunus')
print(27)
print('27')

# Mission 4: Create a variable name with your first name as a string and create a variable age with your age as a number.

name <- "Yunus"
age <- 27

# Mission 4: Create a numeric vector named phone that contains your phone number as three numbers: your area code, the next three digits, and then the last four.

phone <- c(058, 584, 9275)

# Mission 5: Create a conditional statement in notebook.Rmd such that it will change the value of the variable message to 'I execute this when true!' when the condition is TRUE, 
# and the value of message to 'I execute this when false!' when it is FALSE.

message <- "I change based on a condition."

if (TRUE) {
   message <- 'I execute this when true!'
} else {
   message <- 'I execute this when false!'
}


# Mission 6: There are two variables in your code, weather and high_chance_of_rain. Write a conditional statement that:
# Checks to see if weather is equal cloudy and there is a high_chance_of_rain.
# If it is both, the code block should assign the value of the variable message to be "Pack umbrella!"
# Otherwise, the code block should assign the value of the variable message to "No need for umbrella!" 

message <- 'Should I pack an umbrella?'
weather <- 'cloudy'
high_chance_of_rain <- TRUE

if (weather == 'cloudy' & high_chance_of_rain == TRUE) {
  message <- 'Pack umbrella!'
} else {
  message <- 'No need for umbrella!'
}


# Mission 7: The unique() function takes a vector argument and returns a vector with only the unique elements in that vector (removing all duplicates).
# Call this function and pass in the argument data. Save that result inside a variable named unique_vals. Print unique_vals variable.

data <- c(120,22,22,31,15,120)

unique_vals <- unique(data)

print(unique_vals)


# Mission 8: Create a function that takes in 2 numbers as parameters, and indicates whether or not they are equal.


check_equal <- function(num1, num2) {
  if (num1 == num2) {
    message(paste0(num1, " and ", num2, " are equal."))
  } else {
    message(paste0(num1, " and ", num2, " are not equal."))
  }
}


check_equal(3, 3)

# Mission 9: Create a function that uses a while or for loop to display the times tables of any number from 0 to 10. 
# Then skip every other result.
# For example if your input is 1 it will look like this: 0, 2, 4, 6, 8, 10


times_tables_skip <- function(num) {
  for (i in 0:10) {
    result <- num * i
    if (i %% 2 == 0) {
      next  # skip every other result
    }
    cat(result, " ")
  }
}


times_tables_skip(1)


# Mission 10: Create a while loop that displays the vowels of the longest word in English one after the other (i.e. horizontally, not one above) 
# of the other, i.e. vertically). The longest word in English is: "antidisestablishmentarianism"


word <- "antidisestablishmentarianism"
vowels <- c("a", "e", "i", "o", "u")

i <- 1
while (i <= nchar(word)) {
  letter <- substr(word, i, i)
  if (letter %in% vowels) {
    cat(letter, " ")
  }
  i <- i + 1
}


# Mission 11: Create a function that takes in 3 numbers as parameters, and carries out two operations (+, -, *, /).
# Then return the result of the applied operations. You will have to factor for a situation where division by zero is attempted.
# Display a message that indicates whether the result is positive, negative or zero.
# Example operations: 0*32+2 = 2; 21/0+3 > "Error, you're trying to divide by zero"


do_operations <- function(num1, num2, num3) {
  add_result <- num1 + num2 + num3
  subtract_result <- num1 - num2 - num3
  multiply_result <- num1 * num2 * num3
  if (num3 == 0) {
    divide_result <- "Error, you're trying to divide by zero"
  } else {
    divide_result <- num1 / num3 + num2
  }
  results <- list(add = add_result, subtract = subtract_result, multiply = multiply_result, divide = divide_result)
  for (result in results) {
    if (result > 0) {
      message(paste0("The result of the ", names(result), " operation is positive."))
    } else if (result < 0) {
      message(paste0("The result of the ", names(result), " operation is negative."))
    } else {
      message(paste0("The result of the ", names(result), " operation is zero."))
    }
  }
  return(results)
}



do_operations(0, 32, 2)


do_operations(0, 32, 2)










