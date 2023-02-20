

# Mission 1: Display the first 10 lines of the dataset.


url <- "https://raw.githubusercontent.com/justmarkham/pandas-videos/master/data/imdb_1000.csv"
movies <- read.csv(url, header = FALSE)
head(movies, n = 10)


# Set the column names to the values in the first row
names(movies) <- movies[1,]

# Remove the first row from the data frame
movies <- movies[-1,]

# View the data frame with the new column names
movies


# Mission 2: Sort your data frame in ascending order according to the star_rating column. 

sorted_movies <-movies[order(movies$star_rating),]
head(sorted_movies)


# Mission 3: Answer the questions below:
    # What is the median star-rating?
    # What is the highest rated genre?
    # What is the percentage of appearance of each genre of film?

# Calculate the median star-rating
median_rating <- median(movies$star_rating)
cat("The median star-rating is", median_rating, "\n")

# Find the highest rated genre
highest_genre <- unique(movies$genre)[which.max(tapply(movies$star_rating, movies$genre, mean))]
cat("The highest rated genre is", highest_genre, "\n")

# Calculate the percentage of each genre
genre_pct <- prop.table(table(movies$genre)) * 100
cat("The percentage of each genre is:\n")
print(genre_pct)


# Mission 4: Display only films that have a duration greater than 200 if the genre is Drama, Comedy or Action


subset(movies, genre %in% c("Drama", "Comedy", "Action") & duration > 200)

# or

subset(movies, (genre == "Drama" | genre == "Comedy" | genre == "Action") & duration > 200)







