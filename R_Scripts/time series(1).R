rand_no<-sample(144,replace = T)
  rand_no
rand_no_ts<-ts(rand_no,start=0,frequency = 6*24)
rand_no_ts
plot(rand_no_ts)


new_rand<-sample(7*2,replace = T)
length(new_rand)

new_rand_ts<-ts(new_rand,start = 0,frequency = 7)
plot(new_rand_ts)

new_value<-sample(16,replace = T)
new_value_ts<-ts(new_value,start=0,frequency = 16)
plot(new_value_ts,type='o')
