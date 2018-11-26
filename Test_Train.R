data(mtcars)
smp_size <- floor(0.75 * nrow(mtcars))
smp_size
set.seed(123)
train_ind <- sample(seq_len(nrow(mtcars)), size = smp_size)
train <- mtcars[train_ind, ]
test <- mtcars[-train_ind, ]

nrow(mtcars)
#train - 70% test - 30%
sample(x=1:32, size = .7 *32)
index = sample(x=1:nrow(mtcars), size = .7 *nrow(mtcars), replace = F)
index
train = mtcars[index,]
test= mtcars[-index, ]
nrow(train)
nrow(test)




#-----
install.packages("caTools")
library("caTools")
set.seed(101)
sample = sample.split(mtcars$am, SplitRatio = .75)
train = subset(mtcars, sample == TRUE)
test  = subset(mtcars, sample == FALSE)
train; test;
table(train$am); table(test$am);
