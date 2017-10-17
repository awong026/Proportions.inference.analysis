# Proportions.inference.analysis

## Objective
Question 1: Data from an article by Robert Rutledge in Annals of Sugery in 1993
Determine wheater waering SB has an effect on survival. Interpret your results should you wear your seat belt?

Question 2 Compare the approx. and actual test for difference in 2 proportions using
-a. Only look at those groups that had an attack
-b. Attack of any type vs no attack. Check if attack rate is different from placebo and asprin. 

## Summary
Question 1: After looking at the table provided, I used prop.test function to figure out if wearing a seatbelt effects survival
and if it increases the chance of survival

Question 2: After looking at table provided, I used prop.test and the fisher test to figure out if asprin effects if someone gets 
fatal or non fatal attacks, and I stuided if taking aspirn effects if someone gets an attack vs. not getting an attack. 

## Conclusion
Question 1:
Ho: no seatbelt survival ??? seatbelt survival. Ha:  no seatbelt survival < seatbelt survival. 
Pvalue was 2.72e-07, which tells me that not wearing has a lower survival rate than wearing a seatbelt.
So people should wear a seatbelt

Question 2:
(a)Only looking at those groups that had an attack. 
H0: placbo fatal attack = aspirin fatal attack. Ha: placebo fatal attack ??? aspirin fatal attack. 
Pvalue was .1509, which means I can't reject null hypothesis. 
Placebo and aspirin doesn't seem to have a significant effect on if people get fatal or non-fatal attacks

(b)Only looking at attack and no attack
Ho: placebo attack = aspirin attack. Ha: placebo attack ??? aspirin attack. 
The pvalue for this test was 5.692 e-07. This tells me that we reject null hypothesis. 
Aspirin does have an effect on if people have an attack or not. 
