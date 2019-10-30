# Using a specified scalar mean.
randNorm <- rnorm(5, 4, 1)
mean(randNorm)

# Using a mean vector.
mu.vec <- c(1, 12)
randNorm2 <- rnorm(50,mu.vec, 1) # generates random numbers using the means from the mean vector and repeats.
mean(randNorm2)

