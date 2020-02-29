# pmax() and pmin()
# Returns the parallel maxima and minima of the input values
pmin(c(1,0,-1), -2)
pmax(c(1,0,-1), -2)
pmax(1,2)
max(1,2)
pmax(c(1,5), 4) # returns the vector c(4, 5)
pmax(c(-1,1), 0) # returns the vector c(0, 1)
pmin(c(-1,1), 0) # returns the vector c(-1, 0)

pnorm(1.96)
ls()
getws
data.frame(c(1,2,3))
v1 <- c(1,2)
v2 <- c(1,2)
a <- cbind(v1, v2)
typeof(a)

decay<- c("None", "None", "11, 55, 64", "None", "54, 66, 74", "47, 74, 55")
decay
decay[grepl("\\d", decay)] <- "Yes"
decay
decay[ decay != "None" ] <- "Yes"
decay
