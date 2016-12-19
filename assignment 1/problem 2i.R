library(cubature)
f <- function(x)
{
  x[1]*x[1]+x[2]*x[2]
}
one_by_k=(adaptIntegrate(f,c(0,0),c(2,2)))
# k=3/32

