#nomor 1
#poin a
dgeom(3, .2)
#poin b
mean(rgeom(10000, .2)==3)
#poin c
all.equal(dgeom(3, .2), mean(rgeom(10000, .2)==3))
#poin d (menggunakan library ggplot2)
library(ggplot2)
x = 0:20
ggplot(data.frame(x, prob = dgeom(x, .2)), aes(x = factor(x), y = prob)) + geom_col() + geom_text(aes(label = round(prob,2), y = prob + 0.01), position = position_dodge(0.9), size = 3, vjust = 0)
#poin e (mean)
sum(dgeom(0:100, .2)*0:100)
#poin e (varians)
sum(dgeom(0:100, .2)*0:100*0:100)-(sum((dgeom(0:100, .2)*0:100)))^2

#nomor 2
#poin a 	
dbinom(4, 20, .2)
#poin b (menggunakan library ggplot2)
library(ggplot2)
x = 0:20
ggplot(data.frame(x, prob = dbinom(x, 20, .2)), aes(x = factor(x), y = prob)) + geom_col() + geom_text(aes(label = round(prob,2), y = prob + 0.01), position = position_dodge(0.9), size = 3, vjust = 0)
#poin c (mean)
sum(dbinom(0:20, 20, .2)*0:20)
#poin c (varians)
sum(dbinom(0:20, 20, .2)*0:20*0:20)-(sum(dbinom(0:20, 20, .2)*0:20))^2

#nomor 3
#poin a
dpois(6, 4.5)
#poin b
hist(rpois(365, 4.5))
#poin c (mean)
sum(dpois(0:50, 4.5)*0:50)
#poin c (varians)
sum(dpois(0:50, 4.5)*0:50*0:50)-(sum(dpois(0:50, 4.5)*0:50)^2)

#nomor 4
#poin a
x = 0:45
df <- data.frame(x)
df$chisq_distribution <- dchisq(x, 10)
df
#poin b
hist(rchisq(100, 10))
#poin c (mean)
sum(dchisq(0:100, 10)*0:100)
#poin c (varians)
sum(dchisq(0:100, 10)*0:100*0:100)-(sum(dchisq(0:100, 10)*0:100)^2)

#nomor 5
#poin a
x = 0:10
df <- data.frame(x)
df$exp_distribution <- dexp(x, rate = 3)
df	
#poin b (n=10)
hist(rexp(10, rate=3))
#poin b (n=100)
hist(rexp(100, rate=3))
#poin b (n=1000)
hist(rexp(1000, rate=3))
#poin b (n=10000)
hist(rexp(10000, rate=3))
#poin c (mean)
set.seed(1)
mean(rexp(100, rate=3))
#poin c (varians)
set.seed(1)
var(rexp(100, rate =3))

#nomor 6
#poin a 
random_data <- rnorm(100, 50, 8)
df <- data.frame(random_data)
a = min(df[df$random_data>mean(random_data),1])
b = max(df[df$random_data<mean(random_data),1])
x = seq(b,a, .01)
x <- append(x, a)
dfdistribution <- data.frame(x)
dfdistribution$norm_distribution <- dnorm(x, mean(random_data), sd(random_data))
dfdistribution$zscore <- (x-mean(random_data))/sd(random_data)
dfdistribution
#poin b
hist(dnorm(x, mean(random_data), sd(random_data)), breaks= 50, main = "5025211169_Muhammad Rafi Insan Fillah_Probstat_A_DNhistogram")
#poin c
var(random_data)