library(MASS)
car.data = table(Cars93$AirBags, Cars93$Type) 
print(car.data) 

print(chisq.test(car.data))

#chi-Square contigency test
library(MASS)
car.data = table(Cars93$AirBags, Cars93$Type) 
print(car.data)

add_col<-sum(car.data[1:3,])
add_col
add_row<-sum(car.data[,1:6])
add_row

#for compact 
Exp_dri_pass_comp<-(sum(car.data[1,])*sum(car.data[,1]))/93
Exp_dri_pass_comp
exp_dri_only_comp<-(sum(car.data[2,]*sum(car.data[,1])))/93
exp_dri_only_comp
exp_none_comp<-(sum(car.data[3,]*sum(car.data[,1])))/93
exp_none_comp


#for large
Exp_dri_pass_large<-(sum(car.data[1,])*sum(car.data[,2]))/93
Exp_dri_pass_large
exp_dri_only_large<-(sum(car.data[2,]*sum(car.data[,2])))/93
exp_dri_only_large
exp_none_large<-(sum(car.data[3,]*sum(car.data[,2])))/93
exp_none_large

#for midsize
Exp_dri_pass_midsize<-(sum(car.data[1,])*sum(car.data[,3]))/93
Exp_dri_pass_midsize
exp_dri_only_midsize<-(sum(car.data[2,]*sum(car.data[,3])))/93
exp_dri_only_midsize
exp_none_midsize<-(sum(car.data[3,]*sum(car.data[,3])))/93
exp_none_midsize



#for small
Exp_dri_pass_small<-(sum(car.data[1,])*sum(car.data[,4]))/93
Exp_dri_pass_small
exp_dri_only_small<-(sum(car.data[2,]*sum(car.data[,4])))/93
exp_dri_only_small
exp_none_small<-(sum(car.data[3,]*sum(car.data[,4])))/93
exp_none_small


#for sporty
Exp_dri_pass_sporty<-(sum(car.data[1,])*sum(car.data[,5]))/93
Exp_dri_pass_sporty
exp_dri_only_sporty<-(sum(car.data[2,]*sum(car.data[,5])))/93
exp_dri_only_sporty
exp_none_sporty<-(sum(car.data[3,]*sum(car.data[,5])))/93
exp_none_sporty



#for van
Exp_dri_pass_van<-(sum(car.data[1,])*sum(car.data[,6]))/93
Exp_dri_pass_van
exp_dri_only_van<-(sum(car.data[2,]*sum(car.data[,6])))/93
exp_dri_only_van
exp_none_van<-(sum(car.data[3,]*sum(car.data[,6])))/93
exp_none_van


#puting values of each line in a vector
a<-c(Exp_dri_pass_comp,Exp_dri_pass_large,Exp_dri_pass_midsize,Exp_dri_pass_small,Exp_dri_pass_sporty,Exp_dri_pass_van)
b<-c(exp_dri_only_comp,exp_dri_only_large,exp_dri_only_midsize,exp_dri_only_small,exp_dri_only_sporty,exp_dri_only_van)
c<-c(exp_none_comp,exp_none_large,exp_none_midsize,exp_none_small,exp_none_sporty,exp_none_van)

#creating a table
expected_values<- rbind(a,b,c)
expected_values

#chi-square calculations
#observed_value
chi_square<- ((car.data[1,1]-a[1])^2)/a[1] +((car.data[1,2]-a[2])^2)/a[2]+((car.data[1,3]-a[3])^2)/a[3]+ ((car.data[1,4]-a[4])^2)/a[4] + ((car.data[1,5]-a[5])^2)/a[5]+((car.data[1,6]-a[6])^2)/a[6] +((car.data[2,1]-b[1])^2)/b[1] +((car.data[2,2]-b[2])^2)/b[2]+((car.data[2,3]-b[3])^2)/b[3]+ ((car.data[2,4]-b[4])^2)/b[4] + ((car.data[2,5]-b[5])^2)/b[5]+((car.data[2,6]-b[6])^2)/b[6]+ ((car.data[3,1]-c[1])^2)/c[1] +((car.data[3,2]-c[2])^2)/c[2]+((car.data[3,3]-c[3])^2)/c[3]+ ((car.data[3,4]-c[4])^2)/c[4] + ((car.data[3,5]-c[5])^2)/c[5]+((car.data[3,6]-c[6])^2)/c[6]
chi_square
