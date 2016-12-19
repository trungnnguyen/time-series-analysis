load('C:/Users/Toshiba/Desktop/vishal iit/5th sem/Applied time series analysis/assignments/assignment 3/a3_q1.Rdata')

plot(xk)
acf(xk)
pacf(xk)
t=arima(xk,order=(c(0,1,0)))# AR(1)


