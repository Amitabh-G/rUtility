# install.packages("caTools")  # install external package
library(caTools)             # external package providing write.gif function
jet.colors <- colorRampPalette(c("red", "blue", "#007FFF", "cyan", "#7FFF7F",
                                 "yellow", "#FF7F00", "red", "#7F0000"))
dx <- 1500                    # define width
dy <- 1400                    # define height
C  <- complex(real = rep(seq(-2.2, 1.0, length.out = dx), each = dy),
              imag = rep(seq(-1.2, 1.2, length.out = dy), dx))
C <- matrix(C, dy, dx)       # reshape as square matrix of complex numbers

print(C[1:5, 1:5])
Z <- 0                       # initialize Z to zero
X <- array(0, c(dy, dx, 20)) # initialize output 3D array
for (k in 1:30) {            # loop with 20 iterations
  Z <- Z^2 + C               # the central difference equation - quadratic recurrence equation.
  X[, , k] <- exp(-abs(Z))   # capture results
}
write.gif(X, "Mandelbrot-30.gif", col = jet.colors, delay = 100)

vec <- c(1, 2, 3, 4, 5, 6)
combinations <- combs(vec, 4)
print(combinations)
