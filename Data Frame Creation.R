library(tidyverse)
#create a vector array named names  and age with 4 csv
names <- c("Ginger", "Sarah", "George", "Terry")
age <- c(2,6,12,24)
people <- data.frame(names, age)
Lemonade <- c("Strawberry", "Mango", "Pineapple", "Watermelon","Raspberry")  
rank <- c(1,2,3,4,5)
lemonadeBlends <- data.frame(Lemonade, rank)
head(lemonadeBlends)
str(lemonadeBlends)
glimpse(lemonadeBlends)
