#1a
a <- 3
b <- 0.2
dgeom(x = a, prob = b)

#1b
data <- 1000
a <- 3
b <- 0.2
vec <- (rgeom(data, b) == a)
mean(vec)

#1c
Hasil dari perolehan 1a dan 1b tidak terlalu terpaut jauh, nilai 1a tetap karena tidak random sedangkan 1b nilainya random, besar dan kecilnya nilai ditentukan oleh X

#1d
set.seed(10)
x <- 10000
y <- rgeom(x, 0.2)
hist(y)

#1e
a <- 3
b <- 0.2
1 / b
(1 - b) / b^2