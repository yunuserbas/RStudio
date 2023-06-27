
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

