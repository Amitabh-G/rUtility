###################################
### Sampling distribution of median
###################################

sample.vec <- function(ntrials, size, prob) {
  #vec <- rbinom(n=ntrials, size=size, prob=prob)
  vec <- rnorm(n=ntrials)
  return(vec)
}

median.sample.vec <- function(samples) {
  med <- median(samples)
  return(med)
}

vector.medians <- function(numsim, ntrials, size, prob) {
  med <- rep(0, numsim)
  for (i in 1:numsim) {
    vec <- sample.vec(ntrials, size, prob)
    med[i] <- median.sample.vec(vec)
  }
  return(med)
}

median.vec <- vector.medians(numsim = 10000, ntrials = 10000, size = 100, prob = 0.7)

hist(median.vec, 
     main="Histogram of sample medians", 
     xlab="medians", 
     border="blue", 
     col="green",
     breaks=100)

plot(density(median.vec))

###############################################################
### Some sampling distribution of medians for other common dist
###############################################################

pois.med <- replicate(10000, median(rpois(1000, 2)))
hist(pois.med, 
     main="Histogram of sample medians (Poisson RV)", 
     xlab="medians", 
     border="blue", 
     col="green",
     breaks=100)

plot(density(pois.med))


logistic.med <- replicate(10000, median(rlogis(1000, 2)))
hist(logistic.med, 
     main="Histogram of sample medians (Poisson RV)", 
     xlab="medians", 
     border="blue", 
     col="green",
     breaks=100)

plot(density(logistic.med))



#############################################
### All of the above in a single line of code
#############################################
x <- replicate(10000,median(rnorm(15))) ## simulate 10000 sample median of norm size 15
summary(x)
plot(density(sqrt(15)*x))


