#Relation between Fertilizer Consumption, Foodgrain Production, Cancer patients in India.

financial_year2 <- c(1971, 1981, 1991, 2001, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016)

fertilizer_consumption <- c(2177, 5516, 12546, 19702, 22570, 24909, 26486, 28122, 27790, 25534, 24482, 25576, 26753)

foodgrains_production <- c(108.4, 129.6, 176.4, 196.8, 230.78, 234.47, 218.1, 244.5, 259.3, 257.1, 265.0, 252.0, 251.5)

foodgrains_yield <- c(872, 1023, 1380, 1626, 1860, 1909, 1798, 1930, 2078, 2128, 2120, 2028, 2042)

fertilizer_foodgrains_dataframe2 <- data.frame(financial_year2, fertilizer_consumption, foodgrains_production, foodgrains_yield)
fertilizer_foodgrains_dataframe2

fertilizer_foodgrains_dataframe2$fertilizer_consumption
fertilizer_foodgrains_dataframe2$foodgrains_yield

plot(fertilizer_foodgrains_dataframe2$foodgrains_yield, fertilizer_foodgrains_dataframe2$fertilizer_consumption)


 
plot(fertilizer_foodgrains_dataframe2$foodgrains_yield, fertilizer_foodgrains_dataframe2$fertilizer_consumption, xlab = "Foodgrains Yield (Kg/Hectare)", ylab = "Fertilizer Consumption (thousand tonnes)")


ggplot(fertilizer_foodgrains_dataframe2,aes(x=foodgrains_yield, y=fertilizer_consumption))+
  geom_point() + geom_line()




my_yield1 <- ggplot(fertilizer_foodgrains_dataframe2,aes(x=financial_year2, y=foodgrains_yield))+
  geom_point() + geom_line()

my_consump <- ggplot(fertilizer_foodgrains_dataframe2,aes(x=financial_year2, y=fertilizer_consumption))+
  geom_point() + geom_line()


# install.packages("gridExtra")

library(gridExtra)

# Plotting into the grid
grid.arrange(my_yield1,my_consump)

grid.arrange(my_yield1,my_consump,ncol = 2)


plot(fertilizer_foodgrains_dataframe2$foodgrains_yield, fertilizer_foodgrains_dataframe2$fertilizer_consumption, xlab = "Foodgrains Yield (Kg/Hectare)", ylab = "Fertilizer Consumption (thousand tonnes)", main = "Relation between Fertilizer Consumption & Foodgrains Yield")

corelation_fert_food <- cor(fertilizer_foodgrains_dataframe2$fertilizer_consumption, fertilizer_foodgrains_dataframe2$foodgrains_production)

plot(foodgrains_yield, type = "o", col ="red", xlab = "Year", ylab = "Growth", main = "Fertilizer-Foodgrain Relationship")


plot(fertilizer_consumption, type = "o", col = "blue")

plot(financial_year2,fertilizer_consumption,type = "o", col = "red")
par(new = TRUE)
plot(financial_year2, foodgrains_yield, type = "o", col = "blue")
my_labels <- c("fertilizer_consumption","foodgrain_yield")
legend("topleft",my_labels, fill = TRUE)
legend("topleft",my_labels, fill = TRUE)
legend("topleft",my_labels, fill = c("red","blue"))


