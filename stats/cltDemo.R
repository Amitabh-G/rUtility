f <- function(n, r=rnorm,  n.sim=1e3, name="Normal", ...) {
  sapply(n, function(n) {
    x <- scale(colMeans(matrix(r(n*n.sim, ...), n))) # Sample, take mean, standardize
    hist(x, sub=name, main=n, freq=FALSE, breaks=30) # Plot distribution
    curve(dnorm(x), col="Red", lwd=2, add=TRUE)      # Compare to standard Normal
  })
}
n <- c(5,20,100,500)
mfrow.old <- par(mfrow=c(4,length(n)))
f(n)
f(n, rgamma, shape=1/2, name="Gamma(1/2)")
f(n, function(n) runif(n) < 0.9, name="Bernoulli(9/10)")
f(n, rt, df=1, name="Cauchy")
par(mfrow=mfrow.old)
