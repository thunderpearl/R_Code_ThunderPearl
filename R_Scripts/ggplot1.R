
class(diamonds)

print(head(diamonds))

ggplot(diamonds,aes(cut))+
  geom_bar()


print(diamonds$color)

ggplot(diamonds,aes(cut, fill = color))+
  geom_bar()


ggplot(diamonds,aes(x= cut, fill = color))+
  geom_bar()



# This is kind of a wrong plotting because fill is done on the 
 # basis of some factor
ggplot(diamonds,aes(x= cut, fill = carat))+
  geom_bar()



head(diamonds)



