library(ggplot2)

diamonds_price <- diamonds$price

print(diamonds_price)

print(length(diamonds_price))


price_mean1 <- mean(diamonds_price)

print(price_mean1)


plot(diamonds_price, main="standard deviation price",type = "o",lwd=2,col = "green")


price_sd <- sd(diamonds_price)


print(price_sd)


max(diamonds_price)


min(diamonds_price)



ggplot(diamonds, aes(x=depth,y=price,col = color))+ geom_point()




hist(diamonds$price, breaks = 50, ylim = c(0,20000), col = "green", border = "blue")


ggplot(diamonds, aes(carat,fill = cut))+geom_bar()

