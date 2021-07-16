# MechaCar_Statistical_Analysis


## Linear Regression to Predict MPG

H<sub>0</sub> = the other variables in the dataset cannot predict the MPG of MechaCar prototypes beyond a random level

H<sub>1</sub> = one or more of the variables influence the MPG of MechaCar prototypes at a non-random events

![MPG Linear Regression](https://github.com/chloebellehooton/MechaCar_Statistical_Analysis/blob/main/Images/mpg_lin_reg.png)

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Vehicle length and ground clearance all are predictors of MPG due to their p-values being below 0.05 which proves a non-random impact.

#### Is the slope of the linear model considered to be zero? Why or why not?
- The slope of the model is would not be considered zero because the overall p-value is 5.35e-11 showing that the null hypothesis should be rejected. Additionally, vehicle length and ground clearance have more than a random relationship with mpg due to their small p-values. 

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- This linear model predicts mpg of MechaCar prototypes effectively because the R-Squared is 0.7149. This would be considered a strong correlation under the Pearson system and shows an accuracy rate of 71%. 


## Summary Statistics on Suspension Coils

![Total Summary](https://github.com/chloebellehooton/MechaCar_Statistical_Analysis/blob/main/Images/total_summary.png)

![Lot Summary](https://github.com/chloebellehooton/MechaCar_Statistical_Analysis/blob/main/Images/lot_summary.png)

#### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
- In total, the current manufacturing data meets these design specifications. The variance is 62.3. 
- However, the data broken up by lots does not meet these specifications. Lots 1 and 2 have very low variances of 1.0 and 7.5 while lot 3 has a variance of 170.3. Not only is this exceeding the design specifications but it is clearly an outlier that is skewing the total variance number. 


## T-Tests on Suspension Coils

#### Using your knowledge of R, perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

The t-tests have very similar findings to the summary stastistics on Suspension Coils. At the aggregate level, they are not statistically different from the population mean of 1,500 because the p-value is 0.06. 
![All lots](https://github.com/chloebellehooton/MechaCar_Statistical_Analysis/blob/main/Images/t_test_all.png)

For lot 1, they are not statistically different from the population mean because the p-value is 1. 
![Lot 1](https://github.com/chloebellehooton/MechaCar_Statistical_Analysis/blob/main/Images/t_test_lot1.png)


For lot 2, they are not statistically different from the population mean because the p-value is 0.60. 
![Lot 2](https://github.com/chloebellehooton/MechaCar_Statistical_Analysis/blob/main/Images/t_test_lot2.png)

Following the same findings as the summary statistics, lot 3 is statistically different from the population mean because the p-value is 0.04. This is below the standard value of significance of 0.5 and we must reject the null. This lot is somewhat of an outlier for the data and does not have a mean of 1,500. 
![Lot 3](https://github.com/chloebellehooton/MechaCar_Statistical_Analysis/blob/main/Images/t_test_lot3.png)


## Study Design: MechaCar vs Competition

In order to do a statistical summary that can quantify how MechaCar performs against against competitors, I would look at the differences in miles per gallon, electrical charging capacity, vehicle size and exterior color. The null hypothesis is that at least one of these variables will have an impact on MechaCar's competitors' competitive advantage. In order to run this statistical test, I would need values for miles per gallon, electrical charging capacity, vehicle size and exterior color for both MechaCar and its competitors in addition to transactions data for the past 5 years. 

I would use a multiple linear regression to see which variables have an impact on sales. From there I would use a chi-squared analysis to see the frequency of the values of each variables across sales to deduce which are creating a competitive advantage. 

