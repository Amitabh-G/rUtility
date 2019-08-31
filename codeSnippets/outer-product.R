c <- c(1, 2, 3, 4)
d <- c(1, 2, 3, 4)

res = outer(c, d)
print(res)

res = c(res)
print(res)

e <- c(5)
f <- c(5)
print(outer(e,f))
