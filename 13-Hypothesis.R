
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



The lengths of the dogs are given in retriever_lengths and doodle_lengths. Calculate the mean of each breed and save the results to mean_retriever_l and mean_doodle_l. View mean_retriever_l and mean_doodle_l.
