# Calculate the compond interest.

# Inefficient method using for loops.
compounded.amount <- function(principal, rate, year) {
  
  final.amount <- NULL
  for ( i in 1:year) {
    final.amount <- principal* (1 + rate)
    principal <- final.amount
  }
  return(final.amount)
}
amt <- compounded.amount(principal=100, rate=0.079, year=5)
print(amt)

# Using vectorized operations. Very efficient in R.
compounded.amount.vec <- function(principal, rate, year) {
  final.amount <- NULL
  principal.over.years <- principal*(1+rate)^(0:(year-1))
  interest <- principal.over.years*rate
  final.amount <- principal + sum(interest)
  return(final.amount)
}
amt <- compounded.amount.vec(principal=100, rate=0.079, year=5)
print(amt)
