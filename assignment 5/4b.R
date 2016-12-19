load('sarima_data.Rdata')
#plot(yk)
#acf(yk,xlab="Lag",ylab='ACF')
#pacf(yk)
vk=diff(yk)
acf(vk)
pacf(vk)
mod_sarima = arima(vk,order=c(3,0,5),seasonal=list(order=c(0,0,1),period=12),include.mean=F)
print(mod_sarima)
tsdiag(mod_sarima,gof.lag=20)
#acf(a1)
#pacf(a1)
#plot(a1)
#tre=yk-a1# difference is 1
#plot(tre)
#vk=arma(a1,order=c(2,5))

#acf(vk$residuals[10:999], type="covariance") # residuals is white
#x=auto.arima(yk)

