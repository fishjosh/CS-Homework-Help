#Joshua Fishman's CDMA Station creator CS371 Homework #1
#vectors I was given
a = c(0,0,0,1,1,0,1,1)
b = c(0,0,1,0,1,1,1,0)
c = c(0,1,0,1,1,1,0,0)
d = c(0,1,0,0,0,0,1,0)
e = c(0,0,0,0,0,1,0,1)
#Simple binary increment function. Increments a binary vector by 1
binary_inc <- function(e)
{
  j <- length(e)
  e[length(e)] <- e[length(e)] + 1
  while(j!= 0)
  {
    if(e[j] == 2)
    {
      e[j-1] <- e[j-1] + 1
      e[j] <- 0
    }
    j <- j-1
  }
  return(e)
}
#if exactly half of the bits are the same then they are orthogonal thus it's a valid chip sequence
equal_check <- function(f,g)
{
  
  count <- 0
  for(i in seq_along(f))
  {
    if(f[i] == g[i])
    {
      count <- count + 1
    }
  }
  if(count == 4)
  {
    return(TRUE)
  }
  else
  {
    (return(FALSE))
  }
}
vecnum <- c(0,0,0,0,0,0,0,0)
while(1)
{
  #if all 5 chip sequenes are orthogonal with the new one then its a valid station
  if(equal_check(a,vecnum) && equal_check(b,vecnum) && equal_check(c,vecnum) && equal_check(d,vecnum) && equal_check(e,vecnum))
  {
    print(vecnum)
    break
  }
  #if not then just add one and try again
  else
  {
    vecnum <- binary_inc(vecnum)
  }
}

