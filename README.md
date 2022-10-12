# Modul1_Probstat_5025211169
Penjelasan singkat praktikum:

Pada nomor satu diketahui bahwa distribusi yang digunakan adalah distribusi geometrik. 
  a. Diminta untuk mendapatkan nilai f(3) pada distribusi geometrik dengan p = 0,2; sehingga dipanggil fungsi dgeom(3, .2) untuk mendapatkan nilai tersebut. 
  
  b. Diminta untuk mendapatkan mean distribusi geometrik dengan 10000 data random dan X=3, sehingga dipanggil fungsi mean(rgeom(10000, .2)==3) untuk mendapatkan nilai tersebut.
  
  c. Diminta untuk membandingkan nilai yang didapat dari poin a dan b, sehingga dipanggil all.equal(dgeom(3, .2), mean(rgeom(10000, .2)==3)) yang memberi kesimpulan bahwa nilai pada poin a dan poin memiliki selisih yang kecil. 
  
  d. Diminta untuk mencetak histogram distribusi geometrik dengan highlight X=3, sehingga dipanggil fungsi pada source code untuk mendapatkan histogram sebagaimana berikut: ![image](https://user-images.githubusercontent.com/78022264/195272441-fc2391e4-5ba8-45fa-90f3-c8b8f71a49ef.png). histogram yang dibuat memiliki rentang hingga X=10 karena yang diperhatikan hanya pada X=3.
  
  e. Diminta rataan dan variansi sehingga untuk rataan dipanggil fungsi sum(dgeom(0:100, .2)* 0:100) yang setara dengan E(X). Untuk variansi dipanggil fungsi sum(dgeom(0:100, .2)* 0:100* 0:100)-(sum((dgeom(0:100, .2)* 0:100)))^2 yang sejatinya setara dengan E(X^2)-(E(X))^2. Rentang yang digunakan hanya mencapai 100 karena dengan rentang tersebut telah mencapai nilai rataan yang tepat yakni 4 ((1-p)/p) dan variansi 20 ((1-p)/p^2).
  NB: Rumus rataan dan varians yang digunakan mengikuti fungsi bawaan dari Rstudio.


Pada nomor 2 dapat diketahui bahwa distribusi yang digunakan adalah distribusi binomial dengan n=20 dan p = 0.2.
  a. Diminta untuk mencari f(4) sehingga dipanggil fungsi dbinom(4, 20, .2)
  
  b. Diminta grafik histogram sehingga dipanggil fungsi pada source code yang menghasilkan histogram sebagaimana berikut: ![image](https://user-images.githubusercontent.com/78022264/195274351-e63231f9-2f98-4701-a93b-c8b7f148a09c.png).
  
  c. Diminta nilai rataan sehingga dipanggil fungsi sum(dbinom(0:20, 20, .2)* 0:20) yang setara dengan E(X) dan varians sehingga dipanggil fungsi sum(dbinom(0:20, 20, .2)* 0:20* 0:20)-(sum(dbinom(0:20, 20, .2)* 0:20))^2 yang sejatinya setara dengan E(X^2)-(E(X))^2. Rentang yang digunakan hanya mencapai 20 karena dengan rentang tersebut telah mencapai nilai rataan yang tepat yakni 4 (n* p) dan variansi 3.2 (n* p* q).
  
Pada nomor 3 dapat diketahui bahwa distribusi yang digunakan adalah distribusi poisson dengan lambda = 4,5.
  a. Diminta untuk mencari f(6) sehingga dipanggil fungsi dpois(6, 4.5).
  
  b. Diminta histogram dengan highlight X=6 dan n=365 sehingga dipanggil fungsi hist(rpois(365, 4.5)).
  
  c. Diminta perbandingan  nilai dari poin a dan b, sehingga dipanggil fungsi all.equal(dpois(6, 4.5), mean(rpois(365, 4.5)==6)) dengan kesimpulan bahwa selisih antara nilai poin a dan b adalah kecil.
  
  d. Diminta nilai rataan sehingga dipanggil fungsi sum(dpois(0:50, 4.5)* 0:50) yang setara dengan E(X) dan varians sehingga dipanggil fungsi sum(dpois(0:50, 4.5)* 0:50* 0:50)-(sum(dpois(0:50, 4.5)* 0:50)^2) yang sejatinya setara dengan E(X^2)-(E(X))^2. Rentang yang digunakan hanya mencapai 50 karena dengan rentang tersebut telah mencapai nilai rataan yang tepat yakni 4.5 (lambda) dan variansi 4.5 (lambda).
  
  
Pada nomor 4 dapat diketahui bahwa distribusi yang digunakan adalah distribusi chi-square dengan x = 2 dan v= 10.
  a. Diminta fungsi probabilitas dari chi-square sehingga dipanggil fungsi:
      x = 0:20
      df <- data.frame(x)
      df$chisq_distribution <- dchisq(x, 10)
      df
    Fungsi tersebut menampilkan distribusi chi-square dengan rentang x 0 hingga 20.
    
  b. Diminta histogram dengan 100 data random sehingga dipanggi fungsi hist(rchisq(100, 10)), sekiranya tidak diperlukan screenshot histogram karena data yang digenerate adalah random oleh sistem, sehingga dapat di-run sendiri.
  
  c. Diminta nilai rataan sehingga dipanggil fungsi sum(dchisq(0:100, 10)* 0:100) yang setara dengan E(X) dan varians sehingga dipanggil fungsi sum(dchisq(0:100, 10)* 0:100* 0:100)-(sum(dchisq(0:100, 10)* 0:100)^2) yang sejatinya setara dengan E(X^2)-(E(X))^2. Rentang yang digunakan hanya mencapai 100 karena dengan rentang tersebut telah mencapai nilai rataan yang tepat yakni 9.999995 dan variansi 20.00009.
  

Pada nomor 5 dapat diketahui bahwa distribusi yang digunakan adalah distribusi exponensial dengan rate = 3.
  a. Diminta fungsi probabilitas dari exponential distribution sehingga dipanggil:
      x = 0:10
      df <- data.frame(x)
      df$exp_distribution <- dexp(x, rate = 3)
      df
     Fungsi tersebut menampilkan distribusi exponensial dengan rentang x 0 hingga 10.
     
  b. Diminta histogram distribusi exponensial dengan 10, 100, 1000, 10000 data random:
      hist(rexp(10, rate=3))
      hist(rexp(100, rate=3))
      hist(rexp(1000, rate=3))
      hist(rexp(10000, rate=3))
      
  c. Diminta nilai rataan 100 data random dan rate = 3 sehingga dipanggil fungsi mean(rexp(100, rate=3)) dan varians var(rexp(100, rate =3)) dengan sebelumnya setting seed set.seed(1)
  
  
Pada nomor 6 distribusi yang digunakan adalah distribusi normal dengan ketentuan khusus, data random yang digenerate menggunakan fungsi rnorm() dengan para meter 100 data, mean = 50, dan sd = 8.
  a. Diminta fungsi probabilitas distribusi normal dengan P(X1 ≤ x ≤ X2), zscorenya dan plot data randomnya. Sehingga dipanggil bagian fungsi sebagai berikut:
      random_data <- rnorm(100, 50, 8)
      df <- data.frame(random_data)
      a = min(df[df$random_data>mean(random_data),1]) #marker_1
      b = max(df[df$random_data<mean(random_data),1]) #marker_2
      x = seq(b,a, .01) #marker 3
      x <- append(x, a) 
      dfdistribution <- data.frame(x)
      dfdistribution$norm_distribution <- dnorm(x, mean(random_data), sd(random_data))
      dfdistribution$zscore <- (x-mean(random_data))/sd(random_data)
      dfdistribution
      plot(random_data)
    Pada #marker_1 merupakan proses pencarian variabel a yang memiliki nilai minimum yang lebih besar dari mean pada random_data. Pada #marker_1 merupakan proses pencarian variabel b yang memiliki nilai maximum yang lebih kecil dari mean pada random_data. 
    
  b. Diminta histogram dari distribusi normal yang telah didapat sehingga dipanggil     hist(dnorm(x, mean(random_data), sd(random_data)), breaks= 50, main = "5025211169_Muhammad Rafi Insan Fillah_Probstat_A_DNhistogram")
      sekiranya tidak diperlukan screenshot histogram karena data yang digenerate adalah  random oleh sistem, sehingga dapat di-run sendiri.
      
  c. Diminta nilai varians dari random_data yang didapat sehingga dipanggil fungsi var(random_data).
  

Lampiran Screenshots IDE Rstudio:
![Screenshot (389)](https://user-images.githubusercontent.com/78022264/195270909-1ba2354f-77be-4974-8b75-84cdc2b9a10e.png)
