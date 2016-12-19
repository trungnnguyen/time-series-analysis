k=c(1:1000)
t=sin(2*pi*0.2*k)
sigt=var(t)
sige=sigt/10
e=rnorm(1000,0,sqrt(sige))
y=sin(2*pi*0.2*k)+e

acf(y,lag.max =NULL,type="covariance",plot=TRUE)
# in the plot we can see that the graph repeats at lags of 5 which implies the frequency is 0.2