nottem=nottem

plot(nottem)
pacf(nottem)# every lag it repeats
psd=spectrum(nottem)
t=1:240
tr_fit<-lm(nottem~t)
plot(tr_fit$residuals,type='l')
acf(tr_fit$residuals)
pacf(tr_fit$residuals)
plot(psd)
arma_a<-arma(tr_fit$residuals,order=(c(5,1)))
plot(arma_a)
#auto.arima(tr_fit$residuals)