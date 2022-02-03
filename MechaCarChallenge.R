##############################################################
# Deliverable 1: Linear Regression to Predict MPG
##############################################################

# Load tidyverse library (with dplyr package)
library(tidyverse)

# Import file 'MechaCar_mpg.csv' and load into a dataframe
mechaCar_data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform multiple linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar_data)

# Obtain our statistical metrics using the summary() function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar_data))

##############################################################
# Deliverable 2: Create Visualizations for the Trip Analysis
##############################################################

# Import file 'Suspension_Coil.csv' and load into a dataframe
suspension_data <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create a Summary table to get the mean, median, variance, and standard deviation
total_summary <- suspension_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

view(total_summary)

# Create a summary table to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column
lot_summary <- suspension_data %>%
  group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

view(lot_summary)
