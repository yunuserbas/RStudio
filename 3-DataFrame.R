
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

# Select the group, spotify_monthly_listeners, and year_founded columns of artists using select() and save the result to group_info. View group_info.

group_info <- select(artists, group,spotify_monthly_listeners, year_founded)
group_info 

# Select all columns of artists except albums using select() and save the result to no_albums. View no_albums.

o_albums <- artists %>%
              select(-albums)
no_albums

# Select all columns of artists except genre, spotify_monthly_listeners, and year_founded using select() and save the result to df_cols_removed. View df_cols_removed.

df_cols_removed <- artists %>%
                      select(-genre, -spotify_monthly_listeners, -year_founded)
df_cols_removed



