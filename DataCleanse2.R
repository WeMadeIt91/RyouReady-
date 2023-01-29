# Data Cleaning Activity

#first install required packages
install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

#load packages
library(tidyverse)
library(skimr)
library(janitor)

#import data into R
bookings_df <- read_csv("hotel_bookings.csv")

#data comprehension
head(bookings_df)

# data summarization
str(bookings_df) #column data types
glimpse(bookings_df)

# review column names
colnames(bookings_df)

#readr function
skim_without_charts(bookings_df)

#select 3 column names and insert them into a new data frame called trimmed_df
#you work backwards when structuring your code..
trimmed_df <- bookings_df %>% select('hotel', 'is_canceled','lead_time')

#rename "hotel" to "hotel_type"
trimmed_df %>% select(hotel, is_canceled, lead_time) %>% rename(hotel_type = hotel)

#split or combine data into different columns placing it into a new variable
example_df <- bookings_df %>% select(arrival_date_year, arrival_date_month) %>% unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")

#mutate makes changes to the dataset and the code is simplier.
example_df <- bookings_df %>% mutate(guests = adults + children + babies)

head(example_df)

#obtain a summary of the sum and mean of 2 columns of choice placing them
#into new variables/columns which are then placed in a new data frame 
example_df <- bookings_df %>% summarize(number_canceled = sum(is_canceled),average_lead_time = mean(lead_time))

head(example_df)