library(dplyr)

# Read the csv file
mecha_data <- read.csv(file = 'MechaCar_mpg.csv', header = TRUE)
#create linear model
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, mecha_data) 
#summarize linear model
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, mecha_data)) 

# Read the csv file
suspension_data <- read.csv(file = 'Suspension_Coil.csv', header = TRUE)

#create summary table with multiple columns  
total_summary <- summarize(suspension_data, Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI)) #create summary table with multiple columns
print.data.frame(total_summary)

#create summary table with multiple columns and group by
lot_summary <- suspension_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI), .groups = 'keep') 

#compare sample versus population means
t.test(log10(suspension_data$PSI),mu=1500) 