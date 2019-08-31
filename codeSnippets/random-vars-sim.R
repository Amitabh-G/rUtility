set.seed(123)
install.packages('logspline')
library(fitdistrplus)
library(logspline)

# Gives 25 runs of 100 coin flips each -- only the mean of the 25 runs are given.
binom <- rbinom(25, 100, 0.6)
mean(binom)
# By CLT -- when independent random variables are added, their properly normalized sum tends toward a normal distribution 
# (informally a "bell curve") even if the original variables themselves are not normally distributed. 
# So, the binomial rand var follows a normal distribution with mean = np, and variance = pq/n.

rand_norm <- rnorm(n = 25, mean = 60, sd = sqrt(0.24/100))
mean(rand_norm)

ratio_binom_norm <- binom/rand_norm
ratio_binom_norm
fitdistr(mydata, "weibull")

descdist(ratio_binom_norm, discrete = FALSE)












