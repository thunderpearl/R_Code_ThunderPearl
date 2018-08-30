
# Time Series Script in R

# The data for time series is stored in a time series object
# This object is also an object like other objects in R


my_rainfall <- c(919,1274.9,799.1,1235.6,653.5,857.5,745.5,846.6,884.2,795,982.8,1301)


# Frequency specifies the number of observation per unit time....
my_rainfall_ts <- ts(my_rainfall,start = c(2018,1), frequency = 12)


print(my_rainfall_ts)
      

plot(my_rainfall_ts,type = 'o')





my_rainfall_ts2 <- ts(my_rainfall,start = c(2018,1), frequency = 4)

plot(my_rainfall_ts2)
