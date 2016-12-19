acf_x1 <- ARMAacf(ar=c(0.7,-0.12),lag.max=4,pacf= TRUE)
acf_x2 <- ARMAacf(ma=c(0.4),lag.max=4,pacf = TRUE)
pacf_x1_1=acf_x1[1]# pacf at lag 1 for x1
pacf_x1_2=acf_x1[2]# pacf at lag 2 for x1
pacf_x2_1=acf_x2[1]# pacf at lag 1 for x2
pacf_x2_2=acf_x2[2]# pacf at lag 2 for x2