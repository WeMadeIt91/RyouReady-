install.packages('SimDesign')
library(SimDesign)

actualtemp <- c(68.3,70,72.4,71,67,70)
predictedtemp <- c(67.9,69,71.5,70,67,69)
bias(actualtemp,predictedtemp)

actualsales <- c(150,203,137,247,116,287)
predictedsales <- c(200,300,150,250,150,300)

bias(actualsales,predictedsales)
