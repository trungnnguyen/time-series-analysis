jul_a<- pnorm(25,31.5,4.2)
jul_b<- pnorm(37,31.5,4.2)
pr_jul<-jul_b-jul_a # 0.84396 - probability for the month of July to be within 25 to 37 degrees

jan_a<- pnorm(25,22.4,3.2)
jan_b<- pnorm(37,22.4,3.2)
pr_jan<-jan_b-jan_a # 0.2082 - probability for the month of January to be within 25 to 37 degrees

run_jul<-1-pnorm(25,31.5,4.2) # 0.93 - if greater than 0.2 he will not run

run_jan<-1-pnorm(25,22.4,3.2) # 0.208 - if greater than 0.2 he will not run

# he will not run on the beach in both months.