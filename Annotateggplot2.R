# load ggplot2 and tidyverse
library(ggplot2)
library(tidyverse)

#read csv file into a df to manipulate
hb <- read.csv("hotel_bookings.csv")

#review data
head(hb)
colnames(hb)

#create two bar graphs using hb df
ggplot(data = hb) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)

#bar graphs with annotation
ggplot(data = hb) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title="Market Segment Comparision by hotel type")

# find min and max date to determine time period
min(hb$arrival_date_year)

max(hb$arrival_date_year)

#convert into variables
mindate <- min(hb$arrival_date_year)
maxdate <- max(hb$arrival_date_year)

#more annotation and text formatting
ggplot(data = hb) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       subtitle=paste0("Data from: ", mindate, " to ", maxdate))

#switch subtitle to a caption instead
ggplot(data = hb) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate))

# clean up x and y axis
ggplot(data = hb) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x="Market Segment",
       y="Number of Bookings")

#save plot
ggsave('hb_chart.png')