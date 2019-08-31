rbeta(10, 2, 2)
hist(rbeta(100000, 4, 3))
hist(qnorm(rbeta(100000, 4000, 5000)))
hist(qnorm(rbeta(100000, 4, 5)))

hist(replicate(2000, shapiro.test(qnorm(rbeta(5000, 3000, 7000)))$p.value))
