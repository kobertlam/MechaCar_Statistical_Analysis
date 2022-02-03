# Deliverable 1: Linear Regression to Predict MPG

# Load tidyverse library (with dplyr package)
library(tidyverse)

# Import file 'MechaCar_mpg.csv' and load into a dataframe
mechaCar_data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform multiple linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar_data)

# Obtain our statistical metrics using the summary() function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar_data))
