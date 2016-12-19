library(cubature)
f <- function(x)
{
  (3/32)*(x[1]*x[1]+x[2]*x[2])
}
Pr=(adaptIntegrate(f,c(0.4,0.2),c(0.8,0.4))) # 0.0035

