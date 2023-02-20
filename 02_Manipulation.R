

# Mission 1: Display the first 10 lines of the dataset.


url <- "https://raw.githubusercontent.com/justmarkham/pandas-videos/master/data/imdb_1000.csv"
iris <- read.csv(url, header = FALSE)
head(iris, n = 10)



