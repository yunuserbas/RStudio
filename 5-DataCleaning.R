
# load libraries
library(readr)
library(dplyr)


# read CSVs
grocery_1 <- read_csv('grocery_1.csv')
grocery_2 <- read_csv('grocery_2.csv')


# inspect data frames
head(grocery_1)
head(grocery_2)


summary(grocery_1)
summary(grocery_2)
print(colnames(grocery_1))
print(colnames(grocery_2))

# clean data frame
clean_data_frame <- 2


# You have 10 different files containing 100 students each. These files follow the naming structure:

''' exams_0.csv
exams_1.csv
… up to exams_9.csv '''

# You are going to read each file into an individual data frame and then combine all of the entries into one data frame.
# First, create a variable called student_files and set it equal to the list.files() of all of the CSV files we want to import.

student_files <- list.files(pattern = "exams_.*csv")

# Read each file in student_files into a data frame using lapply() and save the result to df_list.
df_list <- lapply(student_files,read_csv)

# Concatenate all of the data frames in df_list into one data frame called students.
students <- bind_rows(df_list)

# Inspect students. Save the number of rows in students to nrow_students. Did you get all of them?
nrow_students <- nrow(students)

# load students data frame
load("students.Rda")

# original column names
original_col_names <- colnames(students)

# There is a column for the scores on the fractions exam, and a column for the scores on the probability exam.
students <- students %>%
  gather('fractions','probability',key='exam', value='score')
head(students)

# updated column names
gathered_col_names <- colnames(students)
print(gathered_col_names)

# unique value counts of exam
exam_counts <- students %>%
  count(exam)

# Dealing with Duplicates
# load students data frame
load("students.Rda")

# The students data frame has a column id that is neither unique nor required for our analysis. Drop the id column from the data frame and save the result to students.
# View the head() of students.

tudents <- students %>%
  select(-id)
head(students)

# find duplicated rows
duplicates <- students %>%
  duplicated()
head(duplicates)

# count duplicated rows
duplicate_counts <- duplicates %>%
  table()
head(duplicate_counts)

# remove duplicated rows, keep only unique rows
unique_students <- students %>%
   distinct()
unique_students

# find and count duplicated rows in updated data frame
updated_duplicates <- unique_students %>%
  duplicated() %>%
  table()
updated_duplicates

# It looks like the first character of the values in gender_age contains the gender, while the rest of the string contains the age. 
# Let’s separate out the gender data into a new column called gender. Save the result to students, and view the head().
students <- students %>%
  mutate(gender = str_sub(gender_age, 1,1))
head(students)

# Now, separate out the age data into a new column called age. Save the updated data frame to students, and view the head().
students <- students %>%
  mutate(age = str_sub(gender_age,2))
head(students)

# Now, we don’t need that gender_age column anymore. Drop gender_age from students, and save the result to students. View the head() of students.
students <- students %>%
  select(-gender_age) 
head(students)

# Separate the full_name column into two new columns, first_name and last_name, by splitting on the ' ' character .
# Provide as an extra argument to the separate() function extra ='merge'. This will ensure that middle names or two-word last names will all end up in the last_name column.
# Save the result to students, and view the head().
# separate the full_name column
students <- students %>%
  separate(full_name,c('first_name','last_name'),' ',extra ='merge')
head(students)

# Let’s inspect the data types in the students table.
# Print out the structure of students.
str(students)

# mean of age column
students <- students %>% 
  summarise(mean_score = mean(score))
