#3a
x <- 4.5
y <- 6
dpois(y, x)

#3b
x <- 4.5
y <- 6
set.seed(0)
n <- 365
y <- rpois(n, x)
hist(y)
z <- (rpois(n, x) == 6)
mean(z)

#3c
#Hasil tidak terpaut jauh satu sama lain

#3d
x <- 4.5
rataan <- x
print(paste("Rataan : ", rataan))
varian <- x
print(paste("Varian : ", varian))