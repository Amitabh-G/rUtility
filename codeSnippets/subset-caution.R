scramble <- function(x) x[sample(nrow(x)), ]
subscramble <- function(x, condition) {
  scramble(subset(x, condition))
}

subscramble(mtcars, cyl == 4)
cyl <- 4
subscramble(mtcars, cyl == 4)
cyl <- sample(10, 100, rep = T)
subscramble(mtcars, cyl == 4)