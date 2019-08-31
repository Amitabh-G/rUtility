a <- c(1, 2, 3)
b <- c(3, 1, 2)
c <- c(1, 2, 3)

setequal(a,b)

identical(a, b)
identical(a, c)

c <- c(1,1,1,1)
d <- c(2,2,2,2)
e <- c(4,5)
unique(c)
length(c)

if (length(c) != length(e)){
  
  print(123)
}

if (unique(c) == 1 && unique(e) != 1){
  print(123)
}

a = list("err" = 1)
a["err"]
length(a)

"err" %in% names(a)

a <- list(NaN, NA, Inf, 3, "sss")
is.finite(a)
which(is.finite(a))
a[which(is.finite(a))]

a[which(is.finite())]

lapply(a, which(is.finite()))

a = list("a" = 1, "b" = 2, "c" = NA, "d" = Inf)
vec = unlist(a, use.names=FALSE)
print(vec)

a[which(is.finite(vec))]


b = list("a" = 1, "b" = 2, "c" = NA, "d" = Inf, "e" = "pass")
vec_b = unlist(b, use.names=FALSE)
print(vec_b)

class(NA)
class(vec_b)

str(c("a", 1))
