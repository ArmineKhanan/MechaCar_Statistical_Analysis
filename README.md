# MechaCar_Statistical_Analysis

## Overview
Within the assignment we are going to asist Jeremy to review the production data of AutosRUs’ newest prototype, the MechaCar. The insights may help the manufacturing team to manage the production troubles.

## Results

### Linear Regression to Predict MPG

<kbd><img src="https://github.com/ArmineKhanan/MechaCar_Statistical_Analysis/blob/main/images/deliverable%201/summary_lm.png" width="700"/></kbd>

#### Coefficients
Based on the intercept and variable estemates the following formula can be derived as a prodictive model for car Miles Per Gallon indicator:

<b> MPG = -103.363 + 6.267 × length + 0.001 × weight + 0.069 × spoiler_angle + 3.546 × ground_clearance - 3.411 × AWD </b>

The purpose of multivariate regression is to assess the influence of each independent variable on the dependent variable while simultaneously accounting for the influence of all the other independent variables. An added-variable plot (introduced below) is an effective way to show the correlation between an
independent variable and a dependent variable conditional on other independent variables. 

<kbd><img src="https://github.com/ArmineKhanan/MechaCar_Statistical_Analysis/blob/main/images/deliverable%201/Addaed-Variable%20Plots.png" width="700"/></kbd>

#### Significance

Three stars (or asterisks) represent a highly significant p-value. Consequently, a small p-value for the intercept, vehicle length and ground_clearance indicates that we can <b>reject the null hypothesis</b>, and confirm that model variables and particularly Vehicle Length and the Ground Clearance are able to predict the MPG of the car.

#### Adjusted R-squared

The R-squared statistic provides a measure of how well the model is fitting the actual data. The R2 we get is 0.6825. Or roughly 68% of the variance found in the response variable (mpg) can be explained by the predictor variables


### Create Visualizations for the Trip Analysis
Summary Statistics on Suspension Coils indicates that 
2. the variance for Lot 3 is pretty high.

<kbd><img src="https://github.com/ArmineKhanan/MechaCar_Statistical_Analysis/blob/main/images/deliverable%202/PSI_summary_per_lot.png" width="700"/></kbd>

<kbd><img src="https://github.com/ArmineKhanan/MechaCar_Statistical_Analysis/blob/main/images/deliverable%202/PSI_box_plot_per_lot.png" width="700"/></kbd>

### T-Tests on Suspension Coils

<kbd><img src="https://github.com/ArmineKhanan/MechaCar_Statistical_Analysis/blob/main/images/deliverable%203/One_sample_t_test_lot_1.png" width="700"/></kbd>

<kbd><img src="https://github.com/ArmineKhanan/MechaCar_Statistical_Analysis/blob/main/images/deliverable%203/One_sample_t_test_lot_2.png" width="700"/></kbd>

<kbd><img src="https://github.com/ArmineKhanan/MechaCar_Statistical_Analysis/blob/main/images/deliverable%203/One_sample_t_test_lot_3.png" width="700"/></kbd>


### Design a Study Comparing the MechaCar to the Competition
Using your knowledge of R, design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

Follow the instructions below to complete Part 4.

In your README, create a subheading ## Study Design: MechaCar vs Competition.

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

In your description, address the following questions:

What metric or metrics are you going to test?

What is the null hypothesis or alternative hypothesis?

What statistical test would you use to test the hypothesis? And why?

What data is needed to run the statistical test?
