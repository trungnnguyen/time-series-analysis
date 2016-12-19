library(TSA)
library(astsa)
library(forecast)

data(retail)

plot(retail,type='l')
retail_diff=diff(retail)
plot(retail_diff)#d=1
spectrum(retail)# S=12

retail_acf=acf(retail,lag.max=50)#q=2,Q=1

retail_pacf=pacf(retail,lag.max=50)#p=2,P=0

retail_test=sarima(retail,2,1,2,D=1,Q=1,S=12)

retail_residuals=retail_test$fit$residuals
acf(retail_residuals)
pacf(retail_residuals)
