install.packages('tidyverse')
library(tidyverse)

#Part 1: Linear Regression to Predict MPG

#Use the library() function to load the dplyr package.
library(dplyr)

#Import and read in the MechaCar_mpg.csv file as a table.
MechaCar_mpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
head(MechaCar_mpg, 8)


options(scipen = 999)
#Perform linear regression using the lm() function.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))


#Part 2: Create Visualizations for the Trip Analysis

#Import and read in the Suspension_Coil.csv file as a table.
Suspension_Coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
head(Suspension_Coil, 8)

#Create a total_summary dataframe to get the mean, median, variance, and standard deviation of the PSI column.
total_summary <- data.frame(Suspension_Coil %>% summarize(Mean=mean(PSI),
                                          Median=median(PSI),
                                          Variance=var(PSI),
                                          SD=sd(PSI), .groups = 'keep'))

#Create a lot_summary dataframe for each manufacturing lot.                                                                
lot_summary <- data.frame(Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                         Median=median(PSI),
                                                                         Variance=var(PSI),
                                                                         SD=sd(PSI), .groups = 'keep'))


#box plot: PSI each indicdiual Lot
plt2 <- ggplot(Suspension_Coil,aes(x=Manufacturing_Lot,y=PSI, fill = Manufacturing_Lot)) #import dataset into ggplot2
plt2 +
#add boxplot
geom_boxplot( show.legend = FALSE, alpha = 0.5,
             outlier.shape = NA) + #add boxplot
#add N of data points
geom_jitter(show.legend = FALSE, width = 0.25, shape = 21, color = 'black') +
  labs( x = "Manifacturing Lot", y = NULL, title = 'DISTRIBUTION OF PSI VALUES')+
  theme_classic()

#Part 3: T-Tests on Suspension Coils

#1. use t.test() to determine if the PSI across ALL lots is statistically different from the pop. mean of 1,500 PSI.
t.test(Suspension_Coil$PSI,mu=1500)


#2. Use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI
lot1 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot3")

a = t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)







