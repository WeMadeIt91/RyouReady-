#install ggplot2
install.packages('ggplot2')

#load ggplot2
library(ggplot2)

#read in csv file into df
hb <- read.csv("hotel_bookings.csv")

#look at data
head(hotel_bookings)

#look at column names
colnames(hb)

#create a bar chart displaying transactions for each distribution site, TA/TO has the
#largest number of bookings
ggplot(data = hb) +
  geom_bar(mapping = aes(x = distribution_channel))


#determine if number of bookings for each distribution type is different depending 
#on whether or not there was a deposit or what market segment they represent
#the legend is the deposit type and each are filled with a different color.

ggplot(data = hb) +
  geom_bar(mapping = aes(x = distribution_channel,fill=deposit_type))

#market segment data is represented in the color-coded sections of each bar
ggplot(data = hb) +
  geom_bar(mapping = aes(x = distribution_channel,fill=market_segment))

#separate charts for each deposit type w/ facet, can split each chart by column/variable?
ggplot(data = hb) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type)
  theme(axis.text.x = element_text(angle = 45))
#rotate text 45 degrees
theme(axis.text.x = element_text(angle = 45))

#combine
ggplot(data = hb) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type)
theme(axis.text.x = element_text(angle = 45))

#explore each market segment
ggplot(data = hb) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~market_segment) +
  theme(axis.text.x = element_text(angle = 45))

#facet_grid include plots even if null
ggplot(data = hb) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

#facet placed before numerous variables
ggplot(data = hb) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))