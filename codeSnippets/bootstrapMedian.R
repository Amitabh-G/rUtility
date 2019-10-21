# Taken from - https://stats.stackexchange.com/a/21113/168306

x = faithful$waiting
bootmed = apply(matrix(sample(x, rep=TRUE, 10^4*length(x)), nrow=10^4), 1, median)
quantile(bootmed, c(.025, 0.975))
quantile(bootmed, c(0.5, 0.995))
quantile(bootmed, c(0.05, 0.5))
sort(x)
quantile(x)


bootmean = apply(matrix(sample(x, rep=TRUE, 10^4*length(x)), nrow=10^4), 1, mean)
quantile(bootmean, c(0.025, 0.975))
