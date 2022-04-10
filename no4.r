#4a
a <- 2
b <- 10
result <- dchisq(x = a, df = b)
result

#4b
b <- 10
n <- 100
set.seed(0)
hist(rchisq(n, b), main <- "Chi-Square Histogram", xlim <- c(0, 20), labels <- T)

#4c
a <- 2
b <- 10
miu <- b
sigma <- b * 2
miu
sigma