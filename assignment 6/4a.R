library(sapa)

xk=arima.sim(2000,model=list(order(0,0,2),ma=c(0.5,0.25)))
xk=4*xk

xk.psd <- SDF(xk,method='direct')

# Periodogram (could use spec.pgram)
par(bg='lightyellow',font.axis=2,font.lab=2,cex.axis=1.2,cex.lab=1.2,lwd=2)
plot(xk.psd,yscale='linear')

# Welch's overlapping segment averaging method; 128 samples per segment
xk.psd <- SDF(xk,method='wosa',blocksize=128)
plot(xk.psd,yscale='linear')


xk.psd <- spec.ar(xk,plot=F)# Parametric method (could give misleading results)
par(bg='lightyellow',font.axis=2,font.lab=2,cex.axis=1.2,cex.lab=1.2,lwd=2)
plot(xk.psd$freq,xk.psd$spec)

#Daniell Smoother
xk.psd <- spec.pgram(xk,span=c(7,7),taper=0,log='no')