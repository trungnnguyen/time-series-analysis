load('C:/Users/Toshiba/Desktop/vishal iit/5th sem/Applied time series analysis/assignments/assignment 3/a3_q2.Rdata')
#a
t=1:1000
tr_fit<-lm(xk~t)
b=tr_fit$coefficients
plot(tr_fit$residuals,type='l',xlab='time',ylab='residuals of given data')
s_a=acf(tr_fit$residuals)
s_A=pacf(tr_fit$residuals)
plot(s_a,type='h',xlab='lag',ylab='acf of residuals')
arma_a<-arma(tr_fit$residuals,order=(c(0,3)))

#b
plot(diff(xk),type='l',xlab='time',ylab='differences of given data')
s_b=acf(diff(xk))
s_B=pacf(diff(xk))
plot(s_b,type='h',xlab='lag',ylab='acf of differences of given data')
arma_b<-arma(diff(xk),order=(c(0,3)))
plot(arma_a)
plot(arma_b)

