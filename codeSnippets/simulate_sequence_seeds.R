n.flips <- 100
seeds <- 1:10^3
#set.seed(218134)
#
# Run some preliminary simulations.
#
results <- sapply(seeds, function(seed) {
  set.seed(seed)
  mean(runif(n.flips) > 1/2)
})
#
# Now do the "real" simulation.
#
seed <- seeds[which.max(results)]
set.seed(seed)
x <- mean(runif(n.flips) > 1/2)
z <- (x - 1/2) * 2 * sqrt(n)
cat("Mean:", x, "Z:", z, "p-value:", pnorm(z, lower.tail=FALSE), "\n")