m_sarima <- list(ar=c(0.3,0,0,0,0,0.8,-0.24),ma=c(0.2,0,0,0,0,0.7,0.14))
vk <- arima.sim(model=m_sarima,n=1000)
acf(vk,lag.max=30,xlab='Lag',ylab='ACF')