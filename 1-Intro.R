
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

print('Yunus')

# Mission 4: Create a function that takes in 2 numbers as parameters, and indicates whether or not they are equal.


check_equal <- function(num1, num2) {
  if (num1 == num2) {
    message(paste0(num1, " and ", num2, " are equal."))
  } else {
    message(paste0(num1, " and ", num2, " are not equal."))
  }
}


check_equal(3, 3)

# Mission 5: Create a function that uses a while or for loop to display the times tables of any number from 0 to 10. 
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


# Mission 6: Create a while loop that displays the vowels of the longest word in English one after the other (i.e. horizontally, not one above) 
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


# Mission 7: Create a function that takes in 3 numbers as parameters, and carries out two operations (+, -, *, /).
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










