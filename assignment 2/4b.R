SMI=EuStockMarkets[,3]
mag=quakes[,4]
not=nottem
k=c(1:1000)
e=rnorm(1000,0,1)
x=0.01*k + e
#time series
plot(SMI)
plot(mag)
plot(not)
plot(k,x)

#ACF
acf(SMI,lag.max =NULL,type="correlation",plot=TRUE)
acf(mag,lag.max =NULL,type="correlation",plot=TRUE)
acf(not,lag.max =NULL,type="correlation",plot=TRUE)
acf(x,lag.max =NULL,type="correlation",plot=TRUE)

#PACF
pacf(SMI,lag.max =NULL,plot=TRUE)
pacf(mag,lag.max =NULL,plot=TRUE)
pacf(not,lag.max =NULL,plot=TRUE)
pacf(x,lag.max =NULL,plot=TRUE)
