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
mpg_lin_reg = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle 
                 + ground_clearance + AWD ,data=mpg_table)
# 6. use summary to get p-value and r^2
summary(mpg_lin_reg)