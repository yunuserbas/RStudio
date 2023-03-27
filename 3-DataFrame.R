

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

# Filter the rows of artists where the genre is 'Rock' and save the result to rock_groups. View rock_groups.

rock_groups <- artists %>%
  filter(genre == 'Rock')
rock_groups

# Filter the rows of artists where the genre is 'Rock' and spotify_monthly_listeners is greater than 20000000. Save the result to popular_rock_groups, and view it.

popular_rock_groups <- artists %>%
  filter(genre == 'Rock', spotify_monthly_listeners>20000000)
popular_rock_groups

# Filter the rows of artists where the country is 'South Korea' or the year_founded is before 2000. Save the result to korea_or_before_2000, and view it.

korea_or_before_2000 <- artists %>%
  filter(country == 'South Korea' | year_founded < 2000)
korea_or_before_2000

# Filter the rows of artists where the genre is not 'Rock'. Save the result to not_rock_groups, and view it.

not_rock_groups <- artists %>%
   filter(!(genre=='Rock')) 
not_rock_groups

# Arrange the rows of artists in ascending order by group. Save the result to group_asc, and view it.

group_asc <- artists %>%
   arrange(group)
group_asc

# Arrange the rows of artists in descending order by youtube_subscribers. Save the result to youtube_desc, and view it.

youtube_desc <- artists %>%
   arrange(desc(youtube_subscribers))
youtube_desc



