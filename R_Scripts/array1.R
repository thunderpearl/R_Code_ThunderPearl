#this script is for array
#change matrix keyword as array.
#here matrix has one copies.
myarray1<-array(c(1:9),dim = c(3,3,1))
print(myarray1)


print()

#here matrix has two copies.
myarray2<-array(c(1:9),dim=c(3,3,2))
print(myarray2)

#here character is print in the matrix.
myarray3<-array(c(1,2,4,7,3,6,4,4,"hello"),dim = c(3,3,1))
print(myarray3)

#matrix is printed with remaining elements if elements are e.g 18
myarray4<-array(c(1:18),dim = c(3,3,2))
print(myarray4)

#matrix is repeated if 4 order is selected again.
myarray5<-array(c(1:16),dim = c(3,3,2))
print(myarray5)
              
#order of the matrix should be same.
myarray_sum=(myarray4+myarray5)
print(myarray_sum).

