a <- list('a'  = list('a' = c(1,2,3), 'b', 'c'))
a
b <- sapply(a, function(x) x[1], simplify=T)
b
a
v <- list()
for (i in 1:length(a)) {
  v[[i]] <-  sapply(a[i], function(x) x$a, simplify=T)
}
length(v)
v
