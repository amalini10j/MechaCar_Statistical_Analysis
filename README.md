# MechaCar_Statistical_Analysis
To review data for insights using R

## Overview

- The aim of the analysis is to review the production data for the auto company for insights that may help the manufacturing team to overcome issues in auto manufacturing
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers

## Linear Regression to Predict MPG

According to the results, vehicle length and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle length and ground clearance have a significant impact on qthe mileage (mpg) of the automobile. When an intercept is statistically significant, it means that the intercept term explains a significant amount of variability in the dependent variable when all independent vairables are equal to zero. Depending on our dataset, a significant intercept could mean that the significant features (such as vehicle length and ground clearance) may need scaling or transforming to help improve the predictive power of the model. 

Following is the screen shot of the multiple linear regression model performed on the given data:
![MultipleLM](/Images/Multiple_LinearRegression.png)

## Summary Statistics on Suspension Coils

The summary statistics for the entire dataset is as follows:

![Total_Summary](/Images/total_summary.png)

The summary statistics for tfor each manufacturing lot is as follows:

![Lot_Summary](/Images/lot_summary.png)

The **design specifications** for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

- The current manufacturing data meets the design specification for all manufacturing lots in total as the variance in Total_Summary dataset is 62.29356 wich is less than 100.

- The current manufacturing data meets the design specification only for Lot1 (variance of 62.29356 < 100) and Lot2 (variance of 7.4693878 < 100).

- Lot3 variance is 170.2861224 which exceeds 100 and hence it does not meet the design specification

## T-Tests on Suspension Coils

#### Total Sample T Test
See screen shot below:

![TTest_total](/Images/TTest_TotalSample.png)

Assuming our significance level is the common 0.05 percent, the p-value (0.06) in the above screen shot is above the significance level. Therefore, there is no sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

#### Lot1 Sample T Test
See screen shot below:

![TTest_Lot1](/Images/TTest_Lot1.png)

Assuming our significance level is the common 0.05 percent, the p-value (1) in the above screen shot is above the significance level. Therefore, there is no sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar. A p value of 1 indicates a strong possibility of the data being statistically similar.

#### Lot2 Sample T Test
See screen shot below:

![TTest_Lot2](/Images/TTest_Lot2.png)

Assuming our significance level is the common 0.05 percent, the p-value (0.6) in the above screen shot is above the significance level. Therefore, there is no sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar. 

#### Lot3 Sample T Test
See screen shot below:

![TTest_Lot3](/Images/TTest_Lot3.png)

Assuming our significance level is the common 0.05 percent, the p-value (0.04) in the above screen shot is below the significance level. Therefore, there is sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically different. 


## Study Design: MechaCar vs Competition

- Since there are two datasets - MechaCar vs. Competitor data we can use two-sample t-test
- A two-sample t-Test is used to test the following hypotheses:

	- H0 : There is no statistical difference between the two observed sample means.
	- Ha : There is a statistical difference between the two observed sample means.
- Metrics to be used for both samples can be MPG and vehicle_weight, horse power, fuel efficiency
- Vehicle data from MechaCar and the competitor automobile company will be needed to perform this statistical analysis











 
