xk=c(1,0,1,2,3,2)#N=6
N=6
tk=fft(xk)
sum1=sum(xk*xk)#19
sum2=(sum(abs(tk)*abs(tk)))/N#114/6=19
#sum1 is equal to sum2 Hence we verified Parseval's theorem
