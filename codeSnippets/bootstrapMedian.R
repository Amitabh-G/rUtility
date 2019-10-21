# Taken from - https://stats.stackexchange.com/a/21113/168306

x = faithful$waiting
bootmed = apply(matrix(sample(x, rep=TRUE, 10^4*length(x)), nrow=10^4), 1, median)
quantile(bootmed, c(.025, 0.975))