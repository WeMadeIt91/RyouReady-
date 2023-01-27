install.packages("tidyverse")
install.packages("readr")
library(readr)
library(tidyverse)

#import csv file into a data frame
bookings_df <- read_csv("hotel_bookings.csv")
head(bookings_df)
str(bookings_df)

#new data frame with columns of choice using previous DF
new_df <- select(bookings_df, 'adr',adults)
new_df

#add new variables to data frame
mutate(new_df, total = 'adr', adults)

#My first csv Import!
mydf <- read_csv("FeedGrains.csv")
View(mydf)
