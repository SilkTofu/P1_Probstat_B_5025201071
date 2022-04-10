Seorang  penyurvei  secara  acak  memilih  orang-orang  di  jalan  sampai  dia  bertemu  dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

- Berapa  peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi(distribusi Geometrik)
- mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
- Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
- Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik


```R
#1a
a <- 3
b <- 0.2
dgeom(x = a, prob = b)

```


0.1024



```R
#1b
data <- 1000
a <- 3
b <- 0.2
vec <- (rgeom(data, b) == a)
mean(vec)
```


0.086


#1c
Hasil dari perolehan 1a dan 1b tidak terlalu terpaut jauh, nilai 1a tetap karena tidak random sedangkan 1b nilainya random, besar dan kecilnya nilai ditentukan oleh X


```R
#1d
set.seed(10)
x <- 10000
y <- rgeom(x, 0.2)
hist(y)
```


    
![png](P1_Probstat_B_5025201071_files/P1_Probstat_B_5025201071_4_0.png)
    



```R
#1e
a <- 3
b <- 0.2
1 / b
(1 - b) / b^2
```


5



20


Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
- Peluang terdapat 4 pasien yang sembuh.
- Gambarkan grafik histogram berdasarkan kasus tersebut.
- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.


```R
#2a
x <- 4
y <- 20
prob <- 0.2
dbinom(x, y, prob)
```


0.218199401946101



```R
#2b
set.seed(10)
a <- 10000
y <- 20
prob <- 0.2
Cov19_Hist <- rbinom(a, y, prob)
hist(Cov19_Hist)
```


    
![png](P1_Probstat_B_5025201071_files/P1_Probstat_B_5025201071_8_0.png)
    



```R
#2c
x <- 4
y <- 20
z <- 0.8
prob <- 0.2
y * prob
y * prob * z

```


4



3.2


Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
- Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
- Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini  selama setahun (n = 365)
- dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.


```R
#3a
x <- 4.5
y <- 6
dpois(y, x)
```


0.128120143864584



```R
#3b
x <- 4.5
y <- 6
set.seed(0)
n <- 365
y <- rpois(n, x)
hist(y)
z <- (rpois(n, x) == 6)
mean(z)
```


0.134246575342466



    
![png](P1_Probstat_B_5025201071_files/P1_Probstat_B_5025201071_12_1.png)
    


3c
Hasil tidak terpaut jauh satu sama lain


```R
#3d
x <- 4.5
rataan <- x
print(paste("Rataan : ", rataan))
varian <- x
print(paste("Varian : ", varian))
```

    [1] "Rataan :  4.5"
    [1] "Varian :  4.5"
    

Diketahui nilai x = 2 dan v = 10. Tentukan:
- Fungsi Probabilitas dari Distribusi Chi-Square.
- Histogram dari Distribusi Chi-Square dengan 100 data random.
- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.


```R
#4a
a <- 2
b <- 10
result <- dchisq(x = a, df = b)
result
```


0.00766415502440505



```R
#4b
b <- 10
n <- 100
set.seed(0)
hist(rchisq(n, b), main <- "Chi-Square Histogram", xlim <- c(0, 20), labels <- T)
```


    
![png](P1_Probstat_B_5025201071_files/P1_Probstat_B_5025201071_17_0.png)
    



```R
#4c
a <- 2
b <- 10
miu <- b
sigma <- b * 2
miu
sigma
```


10



20


Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan:
- Fungsi Probabilitas dari Distribusi Exponensial
- Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3


```R
#5a
lamb <- 3
dexp(x = seq(1, 10, by = 0.1), data = lamb)
```


<style>
.list-inline {list-style: none; margin:0; padding: 0}
.list-inline>li {display: inline-block}
.list-inline>li:not(:last-child)::after {content: "\00b7"; padding: 0 .5ex}
</style>
<ol class=list-inline><li>0.149361205103592</li><li>0.11064950220372</li><li>0.0819711673418777</li><li>0.0607257343374131</li><li>0.0449867304614331</li><li>0.0333269896147269</li><li>0.0246892411470601</li><li>0.0182902396965469</li><li>0.013549742827838</li><li>0.0100378963724138</li><li>0.00743625652999908</li><li>0.00550891433108672</li><li>0.00408110411264368</li><li>0.00302335628714553</li><li>0.00223975742513004</li><li>0.0016592531104435</li><li>0.00122920493693936</li><li>0.000910617414236599</li><li>0.000674601972536545</li><li>0.0004997574329629</li><li>0.000370229412260039</li><li>0.00027427269443452</li><li>0.000203186209472561</li><li>0.000150524046168526</li><li>0.00011151095605238</li><li>8.26093480492415e-05</li><li>6.11985102335158e-05</li><li>4.5336971459565e-05</li><li>3.35864545277728e-05</li><li>2.48814574822721e-05</li><li>1.84326370599846e-05</li><li>1.36552333892497e-05</li><li>1.01160457024175e-05</li><li>7.49415097759989e-06</li><li>5.55180359274571e-06</li><li>4.11287725915225e-06</li><li>3.04689441300748e-06</li><li>2.25719489764926e-06</li><li>1.67217110780838e-06</li><li>1.23877482476198e-06</li><li>9.17706961505477e-07</li><li>6.79854038329712e-07</li><li>5.03648258998698e-07</li><li>3.73111807080861e-07</li><li>2.76408025036983e-07</li><li>2.04768101290046e-07</li><li>1.51695940450065e-07</li><li>1.12379116688857e-07</li><li>8.32524972672224e-08</li><li>6.16749668928132e-08</li><li>4.56899392341379e-08</li><li>3.38479394864897e-08</li><li>2.50751703041238e-08</li><li>1.85761430479921e-08</li><li>1.37615452399425e-08</li><li>1.01948034584852e-08</li><li>7.55249615831481e-09</li><li>5.5950267657083e-09</li><li>4.14489777323861e-09</li><li>3.07061579327824e-09</li><li>2.27476812837357e-09</li><li>1.68518967732518e-09</li><li>1.24841921826724e-09</li><li>9.24851703941601e-10</li><li>6.85146993708471e-10</li><li>5.07569376784539e-10</li><li>3.76016642582049e-10</li><li>2.78559980104348e-10</li><li>2.06362308814038e-10</li><li>1.52876958431386e-10</li><li>1.13254036328373e-10</li><li>8.39006536778075e-11</li><li>6.21551329716268e-11</li><li>4.60456550142759e-11</li><li>3.41114602178001e-11</li><li>2.52703912634059e-11</li><li>1.87207662916871e-11</li><li>1.3868684774006e-11</li><li>1.02741743774747e-11</li><li>7.61129558129453e-12</li><li>5.63858644961725e-12</li><li>4.17716758076549e-12</li><li>3.09452185467204e-12</li><li>2.29247817423883e-12</li><li>1.69830960199128e-12</li><li>1.25813869751386e-12</li><li>9.32052071263034e-13</li><li>6.90481157015787e-13</li><li>5.11521022154691e-13</li><li>3.78944093473931e-13</li><li>2.80728689065205e-13</li></ol>




```R
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
```


    
![png](P1_Probstat_B_5025201071_files/P1_Probstat_B_5025201071_21_0.png)
    



    
![png](P1_Probstat_B_5025201071_files/P1_Probstat_B_5025201071_21_1.png)
    



    
![png](P1_Probstat_B_5025201071_files/P1_Probstat_B_5025201071_21_2.png)
    



    
![png](P1_Probstat_B_5025201071_files/P1_Probstat_B_5025201071_21_3.png)
    



```R
#5c
lamb <- 3
n <- 100

data <- matrix(rexp(n, data <- lamb), n)
rowmean <- apply(data, 1, mean)
miu <- mean(rowmean)
sigma <- var(rowmean)
miu
sigma
```


0.335892659004197



0.108466261906874



```R
#6a
n  <- 100;
sd <- 8
mean <- 50

set.seed(n)
random <- rnorm(n, mean, sd)
avg <- mean(random)
x1 <- floor(avg)
x2 <- ceiling(avg)
dn <- pnorm(x2, mean, sd, lower.tail = TRUE) - pnorm(x1, mean, sd, lower.tail = TRUE)
cat("Distribusi normal P(X1 <= x <= X2) = ", dn)

z_score_x1 <- (x1-mean)/sd
z_score_x2 <- (x2-mean)/sd
cat("Z-Score X1 = ", z_score_x1, "\nZ-Score X2 = ", z_score_x2)

plot(random, type = "l")
```

    Distribusi normal P(X1 <= x <= X2) =  0.04973822Z-Score X1 =  0 
    Z-Score X2 =  0.125


    
![png](P1_Probstat_B_5025201071_files/P1_Probstat_B_5025201071_23_1.png)
    



```R
#6b
hist(rnorm(n, mean, sd), breaks = 50, main = "5025201071_Reza Maranelo Alifiansyah_B_DNHistogram", xlab = "Value", ylab = "Frequency")

```


    
![png](P1_Probstat_B_5025201071_files/P1_Probstat_B_5025201071_24_0.png)
    



```R
#6c
var(rnorm(n, mean, sd))
```


69.127058163048

