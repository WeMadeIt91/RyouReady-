#installplot2
install.packages('ggplot2')

#load ggplot2
library(ggplot2)

#load df
hb <- read.csv("hotel_bookings.csv")

#examine df
head(hb)

#examine column names
colnames(hb)

#plot creation
ggplot(data = hb) + geom_point(mapping = aes(x = lead_time, y = children))

#Scatterplots display the relationship between two numeric variables

#Do guests without children book the most weekend nights: YES!

ggplot(data = hb) + geom_point(mapping = aes(x = stays_in_weekend_nights, y = children),color="gold")

#color=hotel changes the aesthetics size= changes the size

install.packages('palmerpenguins')

library(palmerpenguins)

# pink scatterplot and line chart

ggplot(data=penguins) + geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g)) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g),color='pink')


install.packages('tidyverse')

install.packages('diamonds')

#flipper length per species
ggplot(data=penguins)+
  geom_bar(mapping=aes(x=flipper_length_mm,color=species))

colnames(penguins)
