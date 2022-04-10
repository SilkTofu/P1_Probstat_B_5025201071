#2a
x <- 4
y <- 20
prob <- 0.2
dbinom(x, y, prob)

#2b
set.seed(10)
a <- 10000
y <- 20
prob <- 0.2
Cov19_Hist <- rbinom(a, y, prob)
hist(Cov19_Hist)

#2c
x <- 4
y <- 20
z <- 0.8
prob <- 0.2
y * prob
y * prob * z