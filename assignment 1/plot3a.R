library(plot3D)
y=seq(0,1,0.01)
x=seq(0,2,0.02)

cdf_y=(3*y*y+4*y)/9
cdf_x=(3*x*x+2*x)/36

pdf= function(x,y){
  (x+y)/3
}
plot(y,cdf_y,type="l",xlab="y",ylab="cdf of y",main="cdf of y")

plot(x,cdf_x,type="l",xlab="x",ylab="cdf of x",main="cdf of x")

z=outer(x, y ,pdf)
persp(x,y,z,theta=30,phi=30,ticktype="detailed")

