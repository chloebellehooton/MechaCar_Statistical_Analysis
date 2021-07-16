### DELIVERABLE 1
install.packages("tidyverse")
install.packages("jsonlite")

# 3. load dplyr package
library(tidyverse)

# 4. Import and read in the MechaCar_mpg.csv
mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

# 5. Perform linear regression using the lm() function. 
# In the lm() function, pass in all six variables (i.e., columns)
# add the dataframe you created in Step 4 as the data parameter.
mpg_lin_reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle 
                 + ground_clearance + AWD ,data=mpg_table)
# 6. use summary to get p-value and r^2
summary(mpg_lin_reg)

### DELIVERABLE 2
# 2. Import and read in the Suspension_Coil.csv
coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)

# 3. Write an RScript that creates a total_summary dataframe using the summarize() function
# to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), 
                                          Variance=var(PSI), SD=sd(PSI))

# 4. Write an RScript that creates a lot_summary dataframe using the group_by()
# and the summarize() functions to group each manufacturing lot by: 
# mean, median, variance, and standard deviation of the suspension coil’s PSI column. 
lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), 
                                          Variance=var(PSI), SD=sd(PSI))


### DELIVERABLE 3
# 1. write an RScript using the t.test() function to determine if the PSI across all manufacturing lots 
# is statistically different from the population mean of 1,500 pounds per square inch.
t.test(coil_table$PSI, mu=1500)
# 2. Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function 
# and its subset() argument to determine if the PSI for each manufacturing lot is statistically different
# from the population mean of 1,500 pounds per square inch.

# lot 1 vs population mean
t.test(subset(coil_table, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
# lot 2 vs population mean
t.test(subset(coil_table, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
# lot 3 vs population mean
t.test(subset(coil_table, Manufacturing_Lot=="Lot3")$PSI, mu=1500)

