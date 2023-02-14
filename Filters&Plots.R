#install ggplot2
install.packages('ggplot2')

#load ggplot2
library(ggplot2)

#read in csv file into df
hb <- read.csv("hotel_bookings.csv")

#look at data
head(hb)

#look at column names
colnames(hb)

#Lets make a scatterplot
ggplot(data = hb) +
  geom_point(mapping = aes(x = lead_time, y = children))

#lets make a separate scatterplot chart for each market segment using facet
ggplot(data = hb) +
  geom_bar(mapping = aes(x = hotel)) + facet_wrap(~market_segment)

# install and load tidyverse
install.packages('tidyverse')
library(tidyverse)

#plot that shows the relationship between lead time and guests 
#traveling with children for online bookings at city hotels.
#can achieve this by filtering the data needed into a new df

# filtering a df to only city hotels that are online TA into a new df 
OTACh <- filter(hb, (hotel=="City Hotel" & hb$market_segment=="Online TA"))

View(OTACh)

#can also use pipes for this

OV2 <- hb %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")
View(OV2)

ggplot(data = OV2) +
  geom_point(mapping = aes(x = lead_time, y = children))
