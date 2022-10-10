#install.packages("wooldridge")
library(wooldridge)
library(tidyverse)

data("wage1")

?wage1

#Q-1

ggplot(aes(x = educ, y = wage), data = wage1) + geom_point() + stat_summary(fun = "mean", geom = "smooth") + xlab("Education") + ylab("Wage")

#Q-2
#install.packages("stargazer")
library(stargazer)

lm1 <- lm(log(wage) ~ educ, data = wage1)
summary(lm1)

stargazer(lm1, type = 'text', out = '~/Desktop/Regression1')

#Q6-3

ggplot(aes(x = educ, y = log(wage)), data = wage1) + geom_point() + xlab("Education") + ylab("log(Wage)") +  geom_smooth(method = 'lm', se= FALSE)

#Q6-4
ggplot(aes(x = profocc, y = wage), data = wage1) + geom_point()
ggplot(aes(x = profocc, y = educ), data = wage1) + geom_point()

#Q6-5
lm2 <- lm(log(wage) ~ educ + profocc, data = wage1)
stargazer(lm2, type = 'text')

