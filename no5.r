#5a
lamb <- 3
dexp(x = seq(1, 10, by = 0.1), data = lamb)

#5b
lamb <- 3
set.seed(1)
hist(rexp(n <- 10, data <- lamb))
set.seed(1)
hist(rexp(n <- 100, data <- lamb))
set.seed(1)
hist(rexp(n <- 1000, data <- lamb))
set.seed(1)
hist(rexp(n <- 10000, data <- lamb))

#5c
lamb <- 3
n <- 100

data <- matrix(rexp(n, data <- lamb), n)
rowmean <- apply(data, 1, mean)
miu <- mean(rowmean)
sigma <- var(rowmean)
miu
sigma