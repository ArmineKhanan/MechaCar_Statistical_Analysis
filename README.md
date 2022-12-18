# MechaCar_Statistical_Analysis

## Overview
Within the assignment, we are going to assist Jeremy to review the production data of AutosRUs’ newest prototype, the MechaCar. The insights may help the manufacturing team to manage production troubles.

## Results

### Linear Regression to Predict MPG

<kbd><img src="https://github.com/ArmineKhanan/MechaCar_Statistical_Analysis/blob/main/images/deliverable%201/summary_lm.png" width="700"/></kbd>

#### Coefficients
Based on the intercept and variable estimates following formula can be derived as a predictive model for the car Miles Per Gallon indicator:

<b> MPG = -103.363 + 6.267 × length + 0.001 × weight + 0.069 × spoiler_angle + 3.546 × ground_clearance - 3.411 × AWD </b>

The purpose of multivariate regression is to assess the influence of each independent variable on the dependent variable while simultaneously accounting for the influence of all the other independent variables. An added-variable plot (introduced below) is an effective way to show the correlation between an
independent variable and a dependent variable conditional on other independent variables. 

<kbd><img src="https://github.com/ArmineKhanan/MechaCar_Statistical_Analysis/blob/main/images/deliverable%201/Addaed-Variable%20Plots.png" width="700"/></kbd>

#### Significance

Three stars (or asterisks) represent a highly significant p-value. Consequently, a small p-value for the intercept, vehicle length and ground_clearance indicates that we can <b>reject the null hypothesis</b>, and confirm that model variables and particularly Vehicle Length and the Ground Clearance are able to predict the MPG of the car.

#### Adjusted R-squared

The R-squared statistic provides a measure of how well the model is fitting the actual data. The R2 we get is 0.6825. Or roughly 68% of the variance found in the response variable (mpg) can be explained by the predictor variables


### Create Visualizations for the Trip Analysis
Summary Statistics on Suspension Coils indicate that:
1. The mean values PSI among all lots are close to one another.
2. The variance for Lot 3 is the highest.

<kbd><img src="https://github.com/ArmineKhanan/MechaCar_Statistical_Analysis/blob/main/images/deliverable%202/PSI_summary_per_lot.png" width="700"/></kbd>

<kbd><img src="https://github.com/ArmineKhanan/MechaCar_Statistical_Analysis/blob/main/images/deliverable%202/PSI_box_plot_per_lot.png" width="700"/></kbd>

### T-Tests on Suspension Coils
Lot 1: 
p-value = 1, alpha = 0.05
1 > 0.05, which means the average falls within the 95% confidence interval of general population/general sample. <b> We failed to reject the null hypothesis.</b>

<kbd><img src="https://github.com/ArmineKhanan/MechaCar_Statistical_Analysis/blob/main/images/deliverable%203/One_sample_t_test_lot_1.png" width="700"/></kbd>

Lot 2: 
p-value = 0.60, alpha = 0.05
0.60 > 0.05, which means the average falls within the 95% confidence interval of general population/general sample. <b> We failed to reject the null hypothesis.</b>

<kbd><img src="https://github.com/ArmineKhanan/MechaCar_Statistical_Analysis/blob/main/images/deliverable%203/One_sample_t_test_lot_2.png" width="700"/></kbd>

Lot 3: 
p-value = 0.o4, alpha = 0.05
0.04 < 0.05, which means the average falls within the 95% confidence interval of general population/general sample. <b> Null hypothesis is rejected.</b>

<kbd><img src="https://github.com/ArmineKhanan/MechaCar_Statistical_Analysis/blob/main/images/deliverable%203/One_sample_t_test_lot_3.png" width="700"/></kbd>


## Study Design: MechaCar vs Competition.

1. What metric or metrics are you going to test?

We are going to test the safety rate.

2. What is the null hypothesis or alternative hypothesis?

<b>Null hypothesis:</b> There is no difference between MechaCar and competitor vehicles' average safety rates.

<b>Alternative hypothesis:</b> Average safety rate of MechaCar vehicles differs from what competitor vehicles have.

3. What statistical test would you use to test the hypothesis?

We going to use a two-tailed two-sample t-test. We will optionally run a test for normality for each sample.

4. What data is needed to run the statistical test?

A random sample of n > 50 for MechaCar and their competitor vehicles.
