library("ppcor")
z=rnorm(1000,0,1)
w=rnorm(1000,0,1)
v=rnorm(1000,0,1)
x=2*z+3*v
y=z+w
m=matrix(c(x,y),nrow=1000,byrow=TRUE)
semi_part_cor=spcor(m)# equal to zero
part_cor=pcor(m)# equal to zero
