
# generate random population
population <- rnorm(300, mean=65, sd=3.5)

# calculate population mean here:
population_mean <- mean(population)
population_mean 

# generate sample 1
sample_1 <- sample(population, size=30)
sample_1 

# calculate sample 1 mean
sample_1_mean <- mean(sample_1)
sample_1_mean

# generate samples 2,3,4 and 5
sample_2 <- sample(population, size=30)
sample_3 <- sample(population, size=30)
sample_4 <- sample(population, size=30)
sample_5 <- sample(population, size=30)

# calculate sample means here:
sample_2_mean <-mean(sample_2)
sample_2_mean
sample_3_mean <- mean(sample_3)
sample_3_mean
sample_4_mean <- mean(sample_4)
sample_4_mean
sample_5_mean <- mean(sample_5)
sample_5_mean

# A researcher at a pharmaceutical company is working on the development of a new medication to lower blood pressure, DeePressurize. 
# They run an experiment with a control group of 100 patients that receive a placebo (a sugar pill), and an experimental group of 100 patients that receive DeePressurize. Blood pressure measurements are taken after a 3 month period on both groups of patients.
# The researcher wants to run a hypothesis test to compare the resulting datasets. Two hypotheses, hypo_a and hypo_b, are given in notebook.Rmd. 
# Which could be a null hypothesis for comparing the two sets of data? Update the value of null_hypo_1 to the string "hypo_a" or "hypo_b" based on your answer.

hypo_a <- "DeePressurize lowers blood pressure in patients."
hypo_b <- "DeePressurize has no effect on blood pressure in patients."
null_hypo_1 <- "hypo_b"

# A product manager at a dating app company is developing a new user profile page with a different picture layout. 
# They want to see if the new layout results in more matches between users than the current layout. 
# 50% of profiles are updated to the new layout, and over a 1 month period the number of matches for users with the new layout and the original layout are recorded.

hypo_c <- "The new profile layout has no effect on number of matches with other users."
hypo_d <- "The new profile layout results in more matches with other users than the original layout."
null_hypo_2 <- "hypo_c"

# Your friend is a dog walker that specializes in working with Golden Retrievers and Goldendoodles. 
# They are interested in knowing if there is a signficant difference in the lengths of the two breeds. 
# After a few weeks of data collection, they give you a spreadsheet of 10 Golden Retrievers’ lengths and 10 Goldendoodles’ lengths.

load("retriever_lengths.Rda")
load("doodle_lengths.Rda")

mean_retriever_l <- mean(retriever_lengths)
mean_doodle_l <- mean(doodle_lengths)


# Calculate the difference between mean_retriever_l and mean_doodle_l and save the result to mean_difference. View mean_difference.

mean_difference <- mean_retriever_l - mean_doodle_l
mean_difference

# You want to run a hypothesis test to see if there is a significant difference in the lengths of Golden Retrievers and Goldendoodles. Which of the two statements could be a formulation of the null hypothesis?
# Update the value of null_hypo with "st_1" or "st_2" depending on your answer.


st_1 <- "The average length of Golden Retrievers is 2.5 inches longer than the average length of Goldendoodles."
st_2 <- "The average length of Golden Retrievers is the same as the average length of Goldendoodles."

null_hypo <- "st_2"


# P_VALUES
# You are big fan of apples, so you gather 10 green and 10 red apples to compare their weights. The green apples average 150 grams in weight, and the red apples average 160 grams in weight.
# You run a hypothesis test to see if there is a significant difference in the weight of green and red apples. The test returns a p-value of 0.2. Which statement (st_1, st_2, st_3, or st_4) indicates how this p-value can be interpreted?
# Update the value of interpretation with the string "st_1", "st_2", "st_3", or "st_4" depending on your answer.

st_1 <- "There is a 20% chance that the difference in average weight of green and red apples is due to random sampling."
st_2 <- "There is a 20% chance that green and red apples have the same average weight."
st_3 <- "There is a 20% chance red apples weigh more than green apples."
st_4 <- "There is a 20% chance green apples weigh more than green apples."

# update the value of interpretation here:
interpretation <- "st_1"

# T_TEST

# load and view data
load("ages.Rda")
ages

# calculate ages_mean here:
ages_mean <- mean(ages)

# Use the t.test() function with ages to see what p-value the experiment returns for this distribution, where we expect the mean to be 30.
# Store the results of the test in a variable called results.
# Does the p-value you got with the One Sample T-Test make sense, knowing the mean of ages?

results <- t.test(ages, mu = 30)

# We’ve created two distributions representing the time spent per visitor to BuyPie.com last week, week_1, and the time spent per visitor to BuyPie.com this week, week_2.
# Find the means of these two distributions. Store them in week_1_mean and week_2_mean. View both means.

load("week_1.Rda")
week_1
load("week_2.Rda")
week_2

week_1_mean <- mean(week_1)
week_2_mean <- mean(week_2)

# Find the standard deviations of these two distributions. Store them in week_1_sd and week_2_sd. View both standard deviations.

week_1_sd <- sd(week_1)
week_2_sd <- sd(week_2)

# Run a Two Sample T-Test using the t.test() function.
# Save the results to a variable called results and view it. Does the p-value make sense, knowing what you know about these datasets?

results <- t.test(week_1, week_2)

# We have created samples store_a, store_b, and store_c, representing the sales at VeryAnts at locations A, B, and C, respectively. 
# We want to see if there’s a significant difference in sales between the three locations.
# Explore datasets store_a, store_b, and store_c by finding and viewing the means and standard deviations of each one. 
# Store the means in variables called store_a_mean, store_b_mean, and store_c_mean. Store the standard deviations in variables called store_a_sd, store_b_sd, and store_c_sd.

load("store_a.Rda")
load("store_b.Rda")
load("store_c.Rda")

store_a_mean <- mean(store_a)
store_b_mean <- mean(store_b)
store_c_mean <- mean(store_c)

store_a_sd <- sd(store_a)
store_b_sd <- sd(store_b)
store_c_sd <- sd(store_c)


# Perform a Two Sample T-test between each pair of location data.
# Store the results of the tests in variables called a_b_results, a_c_results, and b_c_results. View the results for each test.

a_b_results <- t.test(store_a, store_b)
a_c_results <- t.test(store_a, store_c)
b_c_results <- t.test(store_b, store_c)

# Store the probability of error for running three T-Tests in a variable called error_prob. View error_prob.

error_prob <- (1-(0.95**3))



