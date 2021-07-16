# MechaCar_Statistical_Analysis
Module 15 Challenge


## Linear Regression to Predict MPG
DELIVERABLE 1

H0 = can not predict / random
H1= non random


Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes


![MPG Linear Regression](https://github.com/chloebellehooton/MechaCar_Statistical_Analysis/blob/main/Images/mpg_lin_reg.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Vehicle length and ground clearance all are predictors of MPG due to their p-values being below 0.05 which proves a non-random impact.

Is the slope of the linear model considered to be zero? Why or why not?
- The slope of the model is would not be considered zero because the overall p-value is 5.35e-11 showing that the null hypothesis should be rejected. Additionally, vehicle length and ground clearance have more than a random relationship with mpg due to their small p-values. 

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- This linear model predicts mpg of MechaCar prototypes effectively because the R-Sqaured is 0.7149. This would be considered a strong correlation under the Pearson system and shows an accuracy rate of 71%. 


## 
