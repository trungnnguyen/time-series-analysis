setwd('C:/Users/Toshiba/Desktop/vishal iit/5th sem/Applied time series analysis/assignments/assignment 5/')
load('sarima_data.Rdata')
yk_1=stl(yk,s.window="periodic")
#plot(yk,type='l')
sea_yk=yk_1$time.series[1:1000,1]
tre_yk=yk_1$time.series[1:1000,2]
sta_yk=yk_1$time.series[1:1000,3]

#plot(sea_yk,type='l')
#plot(tre_yk,type='l')
plot(sta_yk,type='l')
acf(sta_yk)
pacf(sta_yk)
vk=arma(sta_yk,order=c(2,5))
acf(vk$residuals[10:1000], type="covariance") # residuals is white
