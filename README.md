# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![Multiple Linear Regression Model](analysis/Multiple_Linear_Regression_Model.PNG)

![Multiple Linear Regression Model Summary Statistics](analysis/MLRModel_Summary.PNG)

1) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The vehicle length and ground clearance have a statistically significant impact on the variance of the mpg values in the data set. As can be seen from the Multiple Linear Regression Model Summary Statistics, both the Pr(>|t|) for vehicle length and ground clearance are extremely low probability values, less than 0.001%. This  means it is highly unlikely that each coefficient contributes a random amount of variance to the linear model.

2) Is the slope of the linear model considered to be zero? Why or why not?

The hypotheses are as follows: 

Null Hypothesis (H0): The slope of the linear model is zero, or m = 0

Alternative Hypothesis (Ha): The slope of the linear model is not zero, or m ≠ 0

Test as a significance level of 0.05%. 

From the Multiple Linear Regression Model Summary Statistics, the p-value of our linear regression analysis is 5.35 x 10-11, which is much smaller than a significance level of 0.05%. There is sufficient evidence to reject the null hypothesis, which means that the slope of the linear model is not zero.

3) Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

From the Multiple Linear Regression Model Summary Statistics, the r-squared value is 0.7149. An r-squared value of 0.7 or higher is generally a good predictor of how well the model will approximate real world data points. This, combined with the statistically significant p-value, shows it can be used to predict mpg of MechaCar prototypes effectively. However, the intercept is also statistically significant. This means there are other variables and/or factors that contribute to the variation in mpg that are not captured in this linear regression model. More analysis should be completed to see if the dataset holds the necessary information to explain or not explain this variance. 

## Summary Statistics on Suspension Coils

![Total Summary](analysis/total_summary.PNG)

![Lot Summary](analysis/lot_summary.PNG)


The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. From the total summary, where it is not broken down by lots, the variance across all lots is 62.29 which meets the design criteria. However, when grouped by each individual lot, Lot 3 does not meet this criterion. Lot 1 and 2 have variances less than 100 at 0.98 and 7.46, respectively, but Lot 3 has a variance of 170.29. 

## T-Tests on Suspension Coils

Four t-tests were performed: 
    1) Test if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

    2) Test if the PSI from Lot 1 is statistically different from the population mean of 1,500 pounds per square inch.

    3) Test if the PSI from Lot 2 is statistically different from the population mean of 1,500 pounds per square inch.

    4) Test if the PSI from Lot 3 is statistically different from the population mean of 1,500 pounds per square inch.

In all tests a significance value of 0.05 was used and the null and alternative hypothesis were as follows: 

H0 : There is no statistical difference between the observed sample mean and its presumed population mean.
Ha : There is a statistical difference between the observed sample mean and its presumed population mean.


![All Lots Versus Population](analysis/AllLotsVPop.PNG)

After performing a one sample t-test, the p-value is 0.068 which is larger than the significant value of 0.05. There is insufficient evidence to reject the null hypothesis, meaning there is no statistical difference between the mean PSI from all the lots and the population mean. 

![Lot 1 Versus Population](analysis/Lot1VPop.PNG)

After performing a one sample t-test, the p-value is 1 which is larger than the significant value of 0.05. There is insufficient evidence to reject the null hypothesis, meaning there is no statistical difference between the mean PSI from Lot 1 and the population mean. 

![Lot 2 Versus Population](analysis/Lot2VPop.PNG)

After performing a one sample t-test, the p-value is 0.61 which is larger than the significant value of 0.05. There is insufficient evidence to reject the null hypothesis, meaning there is no statistical difference between the mean PSI from Lot 2 and the population mean. 

![Lot 3 Versus Population](analysis/Lot3VPop.PNG)

After performing a one sample t-test, the p-value is 0.042 which is smaller than the significant value of 0.05. There is sufficient evidence to reject the null hypothesis, meaning there is a statistical difference between the mean PSI from Lot 3 and the population mean. 

## Study Design: MechaCar vs Competition

A statistical study could be designed to determine how MechaCar performs against its competitor's cars.

Consumers are often interested in the following metrics when considering buying a new or used car: mpg (hwy and city), safety, maintenance costs, and resale value. 

For any of the above metrics, a two-sample t-test can be performed using R. A two sample t-test allows you to test if the mean of two samples are statistically different as opposed to a one sample t-test which tests if a sample mean is statistically different from the population mean. 

Personally, I would be most interested in resale value of a car at a particular mileage and would like to see how MechaCar compares to others in that specific category. Resale value would be needed in order to perform this. When testing this, the hypotheses would be: 

H0: There is no statistical difference between the mean resale value (at a designated mileage) of MechaCar and its competitors. 

Ha: There is a statistical difference between the mean resale value (at a designated mileage) of MechaCar and its competitors.

I would test to a significance level of 0.05. 