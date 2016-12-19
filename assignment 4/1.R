vk<-arima.sim(n=1500,list(order(2,0,1),ar=c(0,0.25),ma=0.4))

#1
acvf_vk<-acf(vk,type="covariance")
fft_acvf<-(fft(acvf_vk$acf)+ fft(acvf_vk$acf,inverse= TRUE))/2
#2
vk1=arma.spec(ar=c(0,0.25),ma=0.4)
plot(vk1)

plot(acvf_vk$lag[1:15]/30,fft_acvf[1:15],'l',xlab='frequency',ylab='spectrum')
