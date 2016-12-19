ave=1:1000
for (i in 1:1000)
{
xk<-arima.sim(n=1000,list(order(0,0,1),ma=0.4))
acvf_xk<-acf(xk,type="covariance")
sum=0
for (l in 2:31)
{
  sum=sum+(1-l/1000)*acvf_xk$acf[l]
  
}
sum=sum*2
var_xbar=(acvf_xk$acf[1]+sum)/1000
ave[i]=var_xbar
}

var_xbar_monte=mean(ave)