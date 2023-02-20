

# Mission 1: Display the first 10 lines of the dataset.


url <- "https://raw.githubusercontent.com/justmarkham/pandas-videos/master/data/imdb_1000.csv"
movies <- read.csv(url, header = FALSE)
head(movies, n = 10)


# Mission 2: Sort your data frame in ascending order according to the star_rating column. 

sorted_movies <-movies[order(movies$star_rating),]
head(sorted_movies)


