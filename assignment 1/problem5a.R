x=rnorm(1000,1,3)
y=x*x+4*x+2
f <- function(x,y)
{
  y_mean=mean(y)
  x_mean=mean(x)
  z1=sum((y-y_mean)*(x-x_mean)/1000)

return(z1)
}
t <- f(x,y)

z2=cov(x,y)
# t and z2 return almost the same value.