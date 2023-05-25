
# load libraries and data

library(readr)
library(dplyr)
library(ggplot2)
movies <- read_csv("imdb.csv")


# Create a new variable named viz and assign it the value of a new ggplot object that you create by invoking the ggplot() call and assigning it the dataframe movies as the data argument.
# After you’ve defined viz you need to state the variable name on a new line in order to see it.
# Click run and watch your code render an empty canvas. Even though no data is displayed, the data is bound to the viz ggplot object!

viz <- ggplot(data = movies)
viz

# In the visualization we will be creating, we want to plot the Movie Ratings (imdbRating) on the x axis and the number of awards (nrOfWins) on the y axis to see if there is a correlation between a movie rating and the number of awards it wins. 
# We will use this scale on the subsequent layers, so create the aesthetic mappings at the canvas level.

viz <- ggplot(data=movies, aes(x=imdbRating, y=nrOfWins)) 
viz

# Add a scatter plot of the data to the viz ggplot object by using the geom_point() layer.

viz <- ggplot(data=movies, aes(x=imdbRating, y=nrOfWins)) +
       geom_point()

# Inside our "movies" dataset, we have a column named "nrOfGenre" that describes the number of genres a movie is assigned. For example, 
# the movie “Terminator” is classified as both “Action” and “Sci-Fi”, so its number of genres is equal to 2. 
# What if we are wondering if the number of genres a movie is assigned, in other words its versatility, is correlated to its movie rating or its number of wins? 
# Are movies better off when they stick to one simple genre or when the explore multiple ones? We want to display this information on our plot.

# Add an aesthetic mapping to the geom_point() layer that "color" coordinates the data based on "nrOfGenre".

viz <- ggplot(data=movies, aes(x=imdbRating, y=nrOfWins)) + geom_point(aes(color=nrOfGenre))

viz

# There seems to be some crowding in our movie scatterplot. Let’s change the opacity of our points by making them .5 translucent. 
# We can accomplish by manually assigning the alpha value of the geom_point() layer.




