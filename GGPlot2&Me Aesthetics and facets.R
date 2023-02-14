install.packages('ggplot2')
install.packages('palmerpenguins')

library(ggplot2)
library(palmerpenguins)

# visualize data for each species of penguin using the relationship between
#body mass and flipper length in each penguin species.
#The facet_wrap: create a separate plot for each species.
# To add a new layer to our plot use plus sign then add in a new layer whether its geom or facet, etc.

ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  facet_grid(sex~species)

#facet: detailed look at a specific relationships between variables. Use with datasets
#with too many variables/data




