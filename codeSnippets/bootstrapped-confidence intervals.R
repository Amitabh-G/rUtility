# a function to perform bootstrapping
boot.mean.sampling.distribution = function(raw.data, B=1000, multiplier){
  # this function will take 1,000 (by default) bootsamples calculate the mean of 
  # each one, store it, & return the bootstrapped sampling distribution of the mean
  
  boot.dist = vector(length=B)     # this will store the means
  N         = length(raw.data)     # this is the N from your data
  for(i in 1:B){
    boot.sample  = sample(x=raw.data, size=multiplier*N, replace=TRUE)
    boot.dist[i] = mean(boot.sample)
  }
  boot.dist = sort(boot.dist)
  return(boot.dist)
}

# simulate bootstrapped CI from a population w/ true mean = 0 on each pass through
# the loop, we will get a sample of data from the population, get the bootstrapped 
# sampling distribution of the mean, & see if the population mean is included in the
# 95% confidence interval implied by that sampling distribution

# set.seed(00)                       # this makes the simulation reproducible
# includes = vector(length=1000)     # this will store our results
# for(i in 1:1000){
#   sim.data    = rnorm(100, mean=0, sd=1)
#   boot.dist   = boot.mean.sampling.distribution(raw.data=sim.data,  multiplier = 1.0)
#   includes[i] = boot.dist[25]<0 & 0<boot.dist[976]
#   # print(boot.dist[25]<0)
# }
# print(includes)
# mean(includes)     # this tells us the % of CIs that included the true mean

ci.dist.diff.sizes <- function() {
  # this function varies the size of the boot strapped sample and plots the results.
  set.seed(00)                       # this makes the simulation reproducible
  # multipliers.n = seq(from = 1, to = 2, by = 0.05)
  # multipliers.n = seq(1, 2, length.out = 5)
  multipliers.n = seq(0.5, 1.5, length.out = 30)
  # gives 10 equally spaced numbers from 0 to 1
  ci.mean = vector(length = length(multipliers.n))

  for(i in 1:length(multipliers.n)) {
    includes = vector(length=1000)     # this will store our results
    for(j in 1:1000){
      sim.data    = rnorm(100, mean=0, sd=1)
      boot.dist   = boot.mean.sampling.distribution(raw.data=sim.data, multiplier = multipliers.n[i])
      includes[j] = boot.dist[25]<0 & 0<boot.dist[976]
    }
    print(mean(includes))
    ci.mean[i] = mean(includes)
    print(ci.mean[i])
  }
  ci.dist = sort(ci.mean)

  return(ci.dist)
}

ci.dist.out = ci.dist.diff.sizes()
plot(ci.dist.out)
hist(ci.dist.out)



