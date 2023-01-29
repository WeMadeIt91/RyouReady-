id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

#create new dataframe called "employee"
#employee <- data.frame(id, name, job_title)

#separate the name and job_title columns at the first blank space 
# into two new columns called first_name and last_name
# sep = ' ' parameter means separate at blank space

separate(employee, name,into=c('first_name','last_name'), sep=' ') 

#print employees data frame
print(employee)

employee <- data.frame(id, first_name, last_name, job_title)
#from the employee df unite first and last name columns into the named column of choice
unite(employee, 'name', first_name, last_name, sep=' ')

#create new variables and add columns into dataset

library('palmerpenguins')

View(penguins)
penguins %>% mutate(body_mass_kg=body_mass_g/1000, flipper_length_m=flipper_length_mm/1000)
