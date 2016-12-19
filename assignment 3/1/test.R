test<-function(p,j)
{if(p==1)
{
  1
}
else 
  {
    test(p-1,j)
  }
}
sum=0
p=1
for (p in 1:2)
{
for (j in 1:10)
{
  sum=sum+test(p,j)*5
}
}