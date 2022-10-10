# Econometrics
The following file contains the questions in an econometrics assignment. The solutions are in the files containing the codes.
Part 2
These next questions will be using R

Question 4
In this question we will compare the difference between the finite sample properties and large sample properties of OLS. Let’s say the population regression is
Yi=β0+β1Xi+εi
where

β0 = 3
β1 = 5
Xi∼N(2,1)
εi∼N(0,1)
Q4-1 Simulate {(Yi,Xi)}5000i=1 (i.e., 5000 data points), save it as a data frame, and plot the histogram of Yi and Xi. Properly label your graphs (you will lose points if you don’t - you can add + xlab("appropriate label for X") + ylab("appropriate label for Y") to your line of code)

Q4-2 Now let’s show the unbiasedness of β̂ .

Do the following steps in R.

1. Create a function that will calculate β̂ 0 and β̂ 1 from a sample of size N
2. Create 4 empty data frames called val to store your values of β̂ 1 and β̂ 0
3. Using a for loop, run your regOLS function for 100, 500, 1000, 5000 times, saving β̂ 1 and β̂ 0 each time into your val1,val2,val3,val4 dataframes, respectively. Use N=5 for your sample size, so that you are running the regression on a sample of size 5 each time. val1 should have size 100, val2 should have size 500, and so on.

4. Report the average of β̂ 1 and β̂ 0 for each of your val data frames.
5. Show the output of print(results) for credit.

Q4-3 Interpret your results. Does having a small sample size of 5 matter in terms of expected values?

Q4-4 Since we simulated the unbiasedness of the OLS estimator, now let’s simulate the consistency of it. Using the same regOLS function from before, run the function four times with N=10,50,500,5000 each.
Show the output of print(results) for credit.

Q4-5 Interpret your results. What happens to your estimators as N increases?

Q4-6 Explain the difference between unbiasedness (finite sample property) and consistency (large sample / asymptotic property).

Q6-1 Plot the scatterplot of education on hourly earnings. Be sure to label your graphs correctly (you will lose points if you don’t). Add + stat_summary(fun = "mean", geom = "smooth") to your code to see the conditional expectation function.

Include the output for credit. What do you observe? Is this the causal effect?

Q6-2 First load the stargazer package for nicer outputs:

install.packages("stargazer")
library(stargazer)
Now, run the regression of
log(wagei)=β0+β1educi+εi

Print your results using the stargazer package. Include the regression output table. Interpret the meaning of the coefficients. Is this the causal effect of an additional year of education on wages? Why or why not? Is it an overestimate or underestimate?

Q6-3 Plot the scatter plot of education on wages, as in Q6-1, but this time add the regression line instead of the conditional expectation function by including + geom_smooth(method = 'lm', se= FALSE). Include the plot for credit. What does your regression model predict the average wage to be with 0 years of education? Interpret.

Q6-4 Look at the data dictionary. profocc is a variable that is equal to 1 if in professional occupation (lawyer, doctor, etc.) and equal to 0 otherwise. Plot the scatterplot of profocc against wages, and another scatterplot of profocc against education. Include both outputs (label your graphs). What do you observe? What does this tell you about the omitted variable bias?

Q6-5 Now run the following regression:
log(wagei)=β0+β1educi+β2profocci+εi

Print your results using the stargazer package. Include the regression output table. Does this confirm your suspicion that there was OVB in the short form regression? Interpret the meaning of the coefficients.




