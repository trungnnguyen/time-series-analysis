PAC_theory_e=ARMAacf(ma=0,lag.max=20,pacf=TRUE)# white noise
PAC_theory_arma=ARMAacf(ma=0.6,ar=0.5,lag.max=20,pacf=TRUE)#arma(1,1)


e=rnorm(1000,0,1)
vk<-arima.sim(n=1000,list(order(1,0,1),ar=0.5,ma=0.6))

rho_o=acf(vk)
rho_f=1:30
A=matrix(data=NA,ncol=25,nrow=25)
for(i in 1:30)
{
  rho_f[i]=rho_o$acf[i+1]
}


phi_i <-function(t,j,rho_f)
{
  p=t-1
  #return(1)
  
  if(p==j)
  {
    if(p==1)
    {
      return(1)
    }
    else
    {
      sum=0
      for(j in 1:p)
      {
        q=p
        sum=sum+phi_i[q,j,rho_f]*rho_f[p+1-j]
      }
      numer=rho_f[p+1]-sum
      sum1=0
      for(j in 1:p)
      {
        q=p
        sum1=sum1+phi_i[q,j,rho_f]*rho_f[j]
      }
      denom=1-sum1
      final=numer/denom
      return(final)
    }
  }
  
  else
  {k=p-j+1
   q=p
   t=p+1
    s=phi_i[q,j,rho_f]-phi_i[t,t,rho_f]*phi_i[q,k,rho_f]
    return(s)
    
  }
  
}




for (p in 1:25)
{
  for (j in 1:p+1)
    {
    A[1,1]=1
    t=p+1
  
    A[t,j]=phi_i(t,j,rho_f)
  }
}


pac=1:25
for (i in 1:25)
{
  pac[i]=A[i,i]
}






