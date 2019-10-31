# pmax() and pmin()
# Returns the parallel maxima and minima of the input values
pmin(c(1,0,-1), -2)
pmax(c(1,0,-1), -2)
pmax(1,2)
max(1,2)
pmax(c(1,5), 4) # returns the vector c(4, 5)
pmax(c(-1,1), 0) # returns the vector c(0, 1)
pmin(c(-1,1), 0) # returns the vector c(-1, 0)
