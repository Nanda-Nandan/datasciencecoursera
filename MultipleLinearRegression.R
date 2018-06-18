cognitive<-read.csv("http://bit.ly/dasi_cognitive")

#creating a linear model with response variable as kid_score and explanatory variable
#as other variables,"." is for all other variables
#kid_score~. says kid_score vs all
model<-lm(formula = kid_score~.,data = cognitive)

#gives the regression output
summary(model)

#gives the comparision output or anova output
anova(model)
#get the p score from tscore
#here degree of freedom is n-k-1 where n-sample size,k is no of explanatory variables
#and -1 is for intercept,so degree of freedom basically reduced by 1 if we add one explanatory variables
#2.201-t score here,*2 is because we are using two sided t distribution
pt(2.201,df=429,lower.tail = FALSE) * 2

#critical score t* for 95% confidence interval
#(1-0.95)/2
qt(0.025,df=429)