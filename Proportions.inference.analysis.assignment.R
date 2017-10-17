#Assignment: Inference Analysis on Proportions

###############################################################################################################

#Question 1: Data from an article by Robert Rutledge in Annals of Sugery in 1993
#Determine wheater waering SB has an effect on survival. INterpret your results should you wear your seat belt?

###############################################################################################################

#Import data

library(readxl)
Seatbelt_Data <- read_excel("C:/Users/awong/Desktop/Memphis/Linear Modeling/HW/9-18-17/Seatbelt.Data.xlsx")
View(Seatbelt_Data)
Data <- Seatbelt_Data

##Note pad plus plus get the the 32 bit version

#EDA 
Data #Shows table

#Check if wearing a seatbelt has an effect on survival
fisher.test(matrix(c(1781, 135, 1443, 47), ncol = 2)) #pvalue = .00003 (Wanted to see result of fisher test before tried prop.test)
prop.test(x = c(1781, 1443), n = c(1781+135, 1443 +47), correct = F) #pvalue = .5.45e-07

#Conclusions:
#Ho: seatbelt survival = no seatbelt survival. Ha: seatbelt survival ??? no seatbelt survival. 
#The pvalue I got was 5.45e-07, which tells me that the two proportions are significantly different. 
#I can reject the null hypothesis, and say that wearing a seatbelt effects a person's survival rate. 



#Check if not wearing seatbelt has a lower survival than wearing a seatbelt
prop.test(x = c(1781, 1443), n = c(1781+135, 1443 +47), correct = F, alternative = "less") #pvalue = 2.72 e-07

#Conclusion:
#Ho: no seatbelt survival equals seatbelt survival. Ha:  no seatbelt survival < seatbelt survival. 
#Pvalue was 2.72e-07, which tells me that not wearing has a lower survival rate than wearing a seatbelt.
#So wear a seatbelt


############################################################################################################

#Question 2 Compare the approx. and actual test for difference in 2 proportions using
#a. Only look at those groups that had an attack
#b. Attack of any type vs no attack. (approx. test only ) - prop test. The non approx test is fishers. 
#Check if attack rate is different from placebo and asprin. 

#############################################################################################################

#Import new data
library(readxl)
Attack_Data <- read_excel("C:/Users/awong/Desktop/Memphis/Linear Modeling/HW/9-18-17/Attack.Data.xlsx")
View(Attack_Data)

Data2 <- Attack_Data
#EDA
Data2

#a. Only look at those groups that had an attack
prop.test(x = c(18,5), n = c(171 +18, 99+5), correct = F) #pvalue =.1509. 
fisher.test(matrix(c(18, 171, 5,99), ncol = 2)) #pvalue = .1782

#Conclusion:
#Only looking at those groups that had an attack. 
#H0: placbo fatal attack = aspirin fatal attack. Ha: placebo fatal attack doesn't equal aspirin fatal attack. 
#Pvalue was .1509, which means I can't reject null hypothesis. 
#Placebo and aspirin doesn't seem to have a significant effect on if people get fatal or non-fatal attacks

#b. Only look at all attacked vs no attack
prop.test(x = c(18+171, 5+99), n = c(18+171+10845, 5+99 + 10933), correct = F) #pvalue = .000000000005692
fisher.test(matrix(c(18+171, 10845, 99+5, 10933), ncol = 2)) #pvalue = .0000000000533

#Conclusion:
#Ho: placebo attack = aspirin attack. Ha: placebo attack doesn't equal aspirin attack. 
#The pvalue for this test was 5.692 e-07. This tells me that we reject null hypothesis. 
#Aspirin does have an effect on if people have an attack or not. 
            
