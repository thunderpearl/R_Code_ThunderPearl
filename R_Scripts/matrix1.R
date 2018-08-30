#this is the script for matrix
variable<-matrix(c(1:9),nrow=3,ncol=3,byrow=TRUE)
print(variable)

#c used for concatinate.
vec1<-c(1:6)
vec2<-c(1:3)
mymatrix1<-matrix(c(vec1,vec2),nrow=3,ncol=3,byrow=TRUE)
print(mymatrix1)

mymatrix2<-matrix(c(1,5,2,6,9,3,1,7,5),nrow=3,ncol=3,byrow=TRUE)
print(mymatrix2)


mymatrix_sum<-(mymatrix1+mymatrix2)
print(mymatrix_sum)

#this is simple multiplication
mymatrix_multi<-(mymatrix1*mymatrix2)
print(mymatrix_multi)


#this is matrix multiplication
mymatrix_mat_multi<-(mymatrix1%*%mymatrix2)
print(mymatrix_mat_multi)


#to remove vec1 use rm(vec1)
