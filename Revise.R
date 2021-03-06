
#vector


#Normal Distribution with mean 80, SD 10
sales = rnorm(1000000, mean = 80, sd = 10)
sales

#trunc, round, floor, ceiling
sales = trunc(sales)
sales
summary(sales)
boxplot(sales)
mean(sales)
median(sales)
hist(sales)
plot(density(sales)) # A normal graph +- 3*sigma ??????????
#10-50
range(sales)
#matrix
m1=matrix(100:123, ncol = 2)
m1
colSums(m1)
colMeans(m1)
m1[,1]
colnames(m1)=c('A','B')
head(m1)
tail(m1)

#DF
sname = paste('Student', 1:30, sep='_')
sname
(marks = trunc(runif(30, 50,90)))
(gender=sample(c('M','F'), replace=T, size=30, prob=c(.7, .3)))
?runif
df1=data.frame(sname, marks, gender)
head(df1)

library(dplyr)

df1 %>% group_by(gender) %>% summarise(mean(marks), n(), min(marks), max(marks), sd(marks))
#name, marks (descending order); no gender
names(df1)
str(df1)
summary(df1)
df1[(order(df1$marks, decreasing = T)), c('sname','marks')]
df1[(order(df1$marks, decreasing = T)), -3]

#use dplyr
df1 %>% select('sname', 'marks', gender) %>% arrange(desc(marks))

df1 %>% sample_n(3)
df1 %>% sample_frac(.3)

#Linear Regression

#Logistic Regression

#
names(df1)
df1[sample(1:30, size=5), 2] =NA
sample(1:30, size=5)
#5 missing values on random location in marks column
sum(complete.cases(df1))
sum(!complete.cases(df1))
df1[!complete.cases(df1),2]=mean(df1$marks, na.rm=T)

sample(1:30, size = 5)


install.packages('mice')
install.packages('VIM')


