e=rnorm(1000,0,1)
t=acf(e,lag.max =NULL,type="correlation",plot=TRUE)
y=t$acf
z=acf(y,lag.max =20,type="correlation",plot=TRUE)