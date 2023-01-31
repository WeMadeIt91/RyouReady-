# 1) install cleaning packages

install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

# 2) load cleaning packages
library(tidyverse)
library(skimr)
library(janitor)

# 3) load dataset
hB <- read_csv("hotel_bookings.csv")

#Data comprehension
head(hB)

# Rows: 119390 Columns: 32 
# 'arrival_date_month' = chr data type

str(hB)
glimpse(hB)
colnames(hB)

# data manipulation
#syntax: arrange(df,column) doesnt change df values
arrange(hB,lead_time)

#arrange in desc order to see least-greatest with 
#greatest lead time is 737
arrange(hB,desc(lead_time))

head(hB)

#sort using max and min functions
#instead of a comma, delimit with $
max(hotel_bookings$lead_time)


min(hotel_bookings$lead_time)

#average lead time: 104.0114
mean(hotel_bookings$lead_time)

#average lead time before booking is for just city hotels
# 1) filter the df for column hotel looking for city hotels placing it into a new df
hotel_bookings_city <- filter(hotel_bookings, hotel_bookings$hotel=="City Hotel")

head(hotel_bookings_city)

#average lead for city hotels: 109.7357
mean(hotel_bookings_city$lead_time)

#max and mean lead times & comparison to  resort hotels

hotel_summary <- hotel_bookings %>% group_by(hotel) %>% summarise(average_lead_time=mean(lead_time), min_lead_time=min(lead_time),
max_lead_time=max(lead_time))

#review df
head(hotel_summary)
