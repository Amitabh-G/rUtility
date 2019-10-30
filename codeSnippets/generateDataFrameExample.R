set.seed(123)
x = runif(500)
mu = sin(2*(4*x-2)) + 2*exp(-(16^2)*((x-.5)^2))

y = rnorm(500, mu, .3)
d = data.frame(x,y)
d
