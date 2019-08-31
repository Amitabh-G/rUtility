#############################
### Eval and parse usage. ###
#############################

matrix.n <- function(A, n) {
  An <- paste("A", "n", collapse="%*%")
  p <- parse(text = An)
  return(eval(p))
}

A <- matrix.n(InvestmentByStocks(SortedByStocks, UnitsByStocks(InvestmentData)), rcov(dcc.fcst))