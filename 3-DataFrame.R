
# load libraries

library(readr)
library(dplyr)



# load data frame

artists <- read_csv('artists.csv')

# inspect data frame

artists
head(artists)

# call summary() on artists and run the code to view the summary statistics of the data frame.

summary(artists)

# inspect data frame with pipe

library(magrittr)
artists %>% head()

# select columns, filter and arrange rows of artists

artists_manipulated <- artists %>% 
  select(-country,-year_founded,-albums) %>% 
  filter(spotify_monthly_listeners > 20000000, genre != 'Hip Hop') %>% 
  arrange(desc(youtube_subscribers))
artists_manipulated

# Select the group column of artists using select() and save the result to artist_groups. View artist_groups.

artist_groups <- select(artists, group)
artist_groups



