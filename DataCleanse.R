#Data Cleansing: Filter, grouping, sorting, dropping unwanted values, aggregate functions

install.packages("here")
install.packages("skimr")
install.packages("dplyr")
install.packages("janitor")

library("here")
library("skimr")
library("dplyr")
library("janitor")

install.packages("palmerpenguins")
View(penguins)
library("palmerpenguins")
library(tidyverse)
#comprehensive summary of dataset: columns & summary of different data types  

skim_without_charts(penguins)

#function that selects the species column from the penguins dataset
penguins %>% select(species)

#function that omits the species column from the penguins dataset
penguins %>%
  select(-species)

#sort by billing column
penguins %>% arrange(bill_length_mm)

#sort not by billing column and store in variable penguins2 saves clean data without altering original dataset
penguins2 <- penguins %>% arrange(-bill_length_mm)

#group by island column, not interested in NA values. find mean of column of choice

penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))
View(penguins2)

#find the max values

penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))

#from penguins dataset group by columns species and island
#dropping NA values and summarize creating new variables to find both the mean and max of bill length
# all in TWO LINES OF CODE!! I DIG IT!
penguins %>% group_by(species, island) %>% drop_na() %>% summarize(max_bl= max(bill_length_mm), mean_bl = mean(bill_length_mm))

penguins %>% filter(species == "Adelie") %>% drop_na()
