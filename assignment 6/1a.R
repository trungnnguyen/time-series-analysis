library(itsmr)
ma_2=arima.sim(1000,model=list(ma=c(1,0.21)))
arma_12=arima.sim(1000,model=list(ar=-0.4,ma=c(0.7,0.12)))

ma_2_sol=arma(ma_2)
arma_12_sol=arma(arma_12)

ma_sol1=hannan(ma_2,0,2)
arma_sol1=hannan(arma_12,1,2)