#install the visualization package
install.packages('ggplot2')

#install dataset
install.packages('palmerpenguins')

#load both up
library(ggplot2)
library (palmerpenguins)

#examine data frame
data(penguins)
View(penguins)

# create ggplot2 to see relationship between body mass and flipper length
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) +  geom_point()
