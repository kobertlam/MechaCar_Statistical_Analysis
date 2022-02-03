################
# Deliverable 1: Linear Regression to Predict MPG
################

# Load tidyverse library (with dplyr package)
library(tidyverse)

# Import file 'MechaCar_mpg.csv' and load into a dataframe
mechaCar_data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform multiple linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar_data)

# Obtain our statistical metrics using the summary() function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar_data))

################
# Deliverable 2: Create Visualizations for the Trip Analysis
################

# Import file 'Suspension_Coil.csv' and load into a dataframe
suspension_data <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create a Summary table to get the mean, median, variance, and standard deviation
total_summary <- suspension_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Create a summary table to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column
lot_summary <- suspension_data %>%
  group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

################
# Deliverable 3: T-Tests on Suspension Coils
################

# Compare sample mean of PSI for all manufacturing lots versus population means of 1500
t.test(suspension_data$PSI,mu=1500)

# Use subset() to get the PSI values for each lot, and determine if the PSI for each
# manufacturing lot is statistically different from the population mean of 1500 PSI
subset_Lot1 = subset(suspension_data, Manufacturing_Lot == 'Lot1', select = PSI)
t.test(subset_Lot1,mu=1500)

subset_Lot2 = subset(suspension_data, Manufacturing_Lot == 'Lot2', select = PSI)
t.test(subset_Lot2,mu=1500)

subset_Lot3 = subset(suspension_data, Manufacturing_Lot == 'Lot3', select = PSI)
t.test(subset_Lot3,mu=1500)

