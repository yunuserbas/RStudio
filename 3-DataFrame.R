
# load libraries

library(readr)
library(dplyr)


# load data frame

artists <- read_csv('artists.csv')

# inspect data frame

artists
head(artists)
summary(artists)


# select columns, filter and arrange rows of artists

artists_manipulated <- artists %>% 
  select(-country,-year_founded,-albums) %>% 
  filter(spotify_monthly_listeners > 20000000, genre != 'Hip Hop') %>% 
  arrange(desc(youtube_subscribers))
artists_manipulated




