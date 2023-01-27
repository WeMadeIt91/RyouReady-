# My first tibbles Creation first 10 rows of dataset

#load tidyverse library
library(tidyverse) 
data(diamonds)
# add data frame to the data viewer
View(diamonds)
#create tibble from diamonds dataset
as_tibble(diamonds) 

diamonds # dataset preview in R console pane 
