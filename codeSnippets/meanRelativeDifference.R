# Taken from - https://stackoverflow.com/questions/58488678/what-does-all-equal-do-in-r-when-it-is-executed-on-two-matrices?answertab=votes

a <-matrix(c(4, 1, 1, 4), nrow = 2, dimnames = list(Guess = c("Milk", "Tea"),Truth = c("Milk", "Tea")))
b <-matrix(c(2, 3, 3, 2), nrow = 2, dimnames = list(Guess = c("Milk", "Tea"), Truth = c("Milk", "Tea")))
mean(abs(a-b))/mean(abs(a))
all.equal(b,a)
mean(abs(a-b))/mean(abs(b))
