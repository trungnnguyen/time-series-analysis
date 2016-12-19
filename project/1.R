library(TSA)
library(tsDyn)

setwd("C:/Users/Toshiba/Desktop/vishal iit/5th sem/Applied time series analysis/assignments/project")
load("projq1a.Rdata")

plot(vk,type='l')
acf(vk)
pacf(vk)

nonlinear_test=Tsay.test(vk,order=2)# non linear

vk_guess=tar(vk,2,1,1,method="MAIC",estimate.thd=TRUE)
vk_guess_residuals=vk_guess$residuals
acf(vk_guess_residuals)
pacf(vk_guess_residuals)

Threshold=vk_guess$n1 # Threshold
vk_guess_1_coeff=vk_guess$qr1$coefficients # cofficients for first regime
vk_guess_2_coeff=vk_guess$qr2$coefficients # cofficients for second regime

phi_intercept_1=vk_guess_1_coeff[1]
phi_1_1=vk_guess_1_coeff[2]
phi_2_1=vk_guess_1_coeff[3]

phi_intercept_2=vk_guess_2_coeff[1]
phi_1_2=vk_guess_2_coeff[2]

tsdiag.TAR(vk_guess)

# part B

epsk=vk_guess_residuals

vk_guess_y=vk_guess$y

Threshold_mod_store=0
phi_mod_intercept_1_store=0
phi_mod_1_1_store=0
phi_mod_2_1_store=0

phi_mod_intercept_2_store=0
phi_mod_1_2_store=0
j=1
k=1
l=1
m=1
n=1
o=1
for (i in 1:200)
{

epskr1<-sample(epsk,size=200,replace=T)
vk_mod=vk_guess_y+epskr1
vk_guess_mod=tar(vk_mod,2,1,1,method="MAIC",estimate.thd=TRUE)

if(!is.na(vk_guess_mod$n1))
{
Threshold_mod_store[j]=vk_guess_mod$n1 
j=j+1
}

vk_guess_mod_1_coeff=vk_guess_mod$qr1$coefficients # cofficients for first regime
vk_guess_mod_2_coeff=vk_guess_mod$qr2$coefficients # cofficients for second regime

if(!is.na(vk_guess_mod_1_coeff[1]))
{
  
phi_mod_intercept_1_store[k]=vk_guess_mod_1_coeff[1]
k=k+1
}

if(!is.na(vk_guess_mod_1_coeff[2]))
{
phi_mod_1_1_store[l]=vk_guess_mod_1_coeff[2]
l=l+1
}

if(!is.na(vk_guess_mod_1_coeff[3]))
{
phi_mod_2_1_store[m]=vk_guess_mod_1_coeff[3]
m=m+1
}

if(!is.na(vk_guess_mod_2_coeff[1]))
{
phi_mod_intercept_2_store[n]=vk_guess_mod_2_coeff[1]
n=n+1
}

if(!is.na(vk_guess_mod_2_coeff[2]))
{
phi_mod_1_2_store[o]=vk_guess_mod_2_coeff[2]
o=o+1
}

}

Threshold_mod_mean=mean(Threshold_mod_store)
Threshold_mod_var=var(Threshold_mod_store)
Threshold_mod_den=dnorm(Threshold_mod_store,mean=Threshold_mod_mean,sd=sqrt(Threshold_mod_var))
plot(Threshold_mod_store,Threshold_mod_den,type="l")

phi_mod_intercept_1_mean=mean(phi_mod_intercept_1_store)
phi_mod_intercept_1_var=var(phi_mod_intercept_1_store)
phi_mod_intercept_1_den=dnorm(phi_mod_intercept_1_store,mean=phi_mod_intercept_1_mean,sd=sqrt(phi_mod_intercept_1_var))
plot(phi_mod_intercept_1_store,phi_mod_intercept_1_den,type='l')


phi_mod_1_1_mean=mean(phi_mod_1_1_store)
phi_mod_1_1_var=var(phi_mod_1_1_store)
phi_mod_1_1_den=dnorm(phi_mod_1_1_store,mean=phi_mod_1_1_mean,sd=sqrt(phi_mod_1_1_var))
plot(phi_mod_1_1_store,phi_mod_1_1_den,type='l')

phi_mod_2_1_mean=mean(phi_mod_2_1_store)
phi_mod_2_1_var=var(phi_mod_2_1_store)
phi_mod_2_1_den=dnorm(phi_mod_2_1_store,mean=phi_mod_2_1_mean,sd=sqrt(phi_mod_2_1_var))
plot(phi_mod_2_1_store,phi_mod_2_1_den,type='l')

phi_mod_intercept_2_mean=mean(phi_mod_intercept_2_store)
phi_mod_intercept_2_var=var(phi_mod_intercept_2_store)
phi_mod_intercept_2_den=dnorm(phi_mod_intercept_2_store,mean=phi_mod_intercept_2_mean,sd=sqrt(phi_mod_intercept_2_var))
plot(phi_mod_intercept_2_store,phi_mod_intercept_2_den,type='l')

phi_mod_1_2_mean=mean(phi_mod_1_2_store)
phi_mod_1_2_var=var(phi_mod_1_2_store)
phi_mod_1_2_den=dnorm(phi_mod_1_2_store,mean=phi_mod_1_2_mean,sd=sqrt(phi_mod_1_2_var))
plot(phi_mod_1_2_store,phi_mod_1_2_den,type='l')