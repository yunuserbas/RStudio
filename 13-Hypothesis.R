
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

