#n is an integer
library(gmp)
user_dec <- readline("Enter decimal: ")
n <-as.bigz(user_dec)
n
l <- vector()
inc <- 1
while(n >= 1)
{
  temp <- as.bigz(n %% 2)
  l[inc] <- toString(temp)
  n <- as.bigz(n/2)
  inc <- inc+1
}
bin <- as.integer(rev(l))
bin

#binary to dec?
user_bin <- readline("Enter binary: ")
a<- as.bigz(user_bin)
b<- vector()
b <- as.numeric(strsplit(as.character(a), "")[[1]])
c<- vector()
dec <- length(b)-1
permanent_length <- length(b)
i <- 1
while(dec>=0)
{
  if(b[i]!=0)
  {c[i] <- 2 ^ (b[i]*dec)}
  else{c[i]<-0}
  dec <- dec - 1
  i <- i+1
}
sum(c)