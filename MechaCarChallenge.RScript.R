library(dplyr)
mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table)) #generate summary statistics
sus_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- sus_table %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table
lot_summary <- sus_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table
ttest1 <- t.test(sus_table$PSI,mu=mean(1500)) #compare sample versus population mean
t.test(sus_table$PSI, subset(sus_table$Manufacturing_Lot=="Lot1"), mu=mean(1500))
lot1 <- subset(sus_table, Manufacturing_Lot=="Lot1") #select only data points where lot is Lot 1
lot2 <- subset(sus_table, Manufacturing_Lot=="Lot2") #select only data points where lot is Lot 2
lot3 <- subset(sus_table, Manufacturing_Lot=="Lot3") #select only data points where lot is Lot 3
ttest_lot1 <- t.test(lot1$PSI,mu=mean(1500)) #compare sample versus population mean
ttest_lot1
ttest_lot2 <- t.test(lot2$PSI,mu=mean(1500)) #compare sample versus population mean
ttest_lot2
ttest_lot3 <- t.test(lot3$PSI,mu=mean(1500)) #compare sample versus population mean
ttest_lot3
