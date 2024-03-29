
# We’ve included two small unsorted datasets named dataset_one and dataset_two.
# We’ve also included, as a comment, the sorted version of the first dataset.
# By looking at sorted version of dataset_one, find the second quartile of the dataset and store it in a variable named dataset_one_q2.

dataset_one <- c(50, 10, 4, -3, 4, -20, 2) # sorted dataset_one: [-20, -3, 2, 4, 4, 10, 50]

dataset_two <- c(24, 20, 1, 45, -15, 40) # sorted dataset_two: -15, 1, 20, 24, 40, 45

# define the second quartile of both datasets here:

dataset_one_q2 <- 4

dataset_two_q2 <- 22

# define the first and third quartile of both datasets here:

dataset_one_q1 <- -3

dataset_one_q3 <- 10

dataset_two_q1 <- 1

dataset_two_q3 <- 40

# Create a variable named dataset_one_q1 and set it equal to the first quartile of dataset one. This time, use the second method of finding quartiles.

dataset_one_q1 <- -0.5

# Create a variable named dataset_one_q3 and set it equal to the third quartile of dataset one. Again, use the second method of finding quartiles.

dataset_one_q3 <- 7

# Create two variables named dataset_two_q1 and dataset_two_q3 and set them equal to the first and third quartile of dataset two.
# Use the second method of calculating quartiles. Since Q2 fell between two data points, this method is no different than the first method!

dataset_two_q1 <- 1

dataset_two_q3 <- 40

# We’ve brought back our music dataset. The lengths of 9,975 songs (in seconds) are stored in a variable named songs. 
# Use the quantile() function to find the first quartile. Store the result in a variable named songs_q1.

load("songs.Rda")
songs_q1 <- quantile(songs, 0.25)

# Find the second and third quartile of the dataset and store the values in two variables named songs_q2 and songs_q3.

songs_q2 <- quantile(songs, 0.5)

songs_q3 <- quantile(songs, 0.75)

# The dataset containing information about the lengths of songs is stored in a variable named songs.
# Create a variable named twenty_third_percentile that contains the value that splits the first 23% of the data from the rest of the data.

twenty_third_percentile <- quantile(songs, 0.23)

# Create a variable named quartiles that contains the quartiles of the songs dataset.
# The quartiles of a dataset split the data into four groups of equal size. Each group should have 25% of the data, so you’ll want to use c(0.25, 0.5, 0.75) as the second parameter to the quantile() function.

quartiles <- quantile(songs, c(0.25, 0.5, 0.75))

# Create a variable named deciles. deciles should store the values that split the dataset into ten groups of equal size. Each group should have 10% of the data.
# The first value should be at 10% of the data. The next value should be at 20% of the data. The final value should be at 90% of the data.

deciles <- quantile(songs, c(0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9))

# We won’t make you calculate all 99 percentiles, but let’s take a look at one. Find the value that separates the first 32% of the data from the rest.
# Store that value in a variable named percentile.

percentile <- quantile(songs, 0.32)

# Look at the printout. If you had a song that was exactly three minutes long, is that song above or below the 32nd percentile?
# Create a variable named answer and set it equal to either "above" or "below". Don’t forget to include the quotes!

answer <- "below" 

# We’ve imported a dataset of song lengths (measured in seconds) and plotted a histogram.
# It looks like there are some outliers — this might be a good opportunity to use the IQR.
# Before we do that, let’s calculate the range. We’ve found the maximum and minimum values of the dataset and stored them in variables named maximum and minimum.
# Create a variable named song_range and set it equal to the difference between the maximum and the minimum.

maximum <- max(songs)
minimum <- min(songs)

song_range <- maximum - minimum

# We’ve calculated the first quartile of songs and stored it in the variable q1.
# Calculate the third quartile and store it in a variable named q3.
# To calculate the third quartile, call the same function, but change the second argument to 0.75.

q1 <- quantile(songs,0.25)

q3 <- quantile(songs, 0.75)

# Now that we have both the first quartile and the third quartile, let’s calculate the IQR.
# Create a variable named interquartile_range and set it equal to the difference between q3 and q1.

interquartile_range <- q3 - q1

# Let’s calculate the IQR again, but this time, use the stats function.
# Create a variable named interquartile_range and set it equal to the result of calling IQR() using songs as an argument.

interquartile_range <- IQR(songs)
