behind.door <- c("Car", "Goat", "Goat")
# The function that gives unusual output
generate.behind.door <- function(num.samples) {a <- replicate(n = num.samples, sample(behind.door, replace = FALSE)); return(a)}




# This gives expected output
sample.prizes <- function() { v <- sample(behind.door, replace = FALSE); return(v)}
generate.behind.door1 <- function(num.samples) {a <- replicate(n = num.samples, sample.prizes()); return(a)}

