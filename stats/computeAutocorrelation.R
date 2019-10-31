# Axis bank data.
axis.bank.data <- read.csv('D:/other/NSE/stocks/banks/axisBank/15-10-2017-TO-14-10-2019AXISBANKALLN.csv')
close.price <- axis.bank.data[, 'Close.Price']

# Auto-correlation function.
k <- 160
first.k.lagged <- close.price[1:(length(close.price)-k)]
last.k.lagged <- close.price[(k+1):length(close.price)]
cor(first.k.lagged, last.k.lagged)
which(close.price %in% last.k.lagged)
which(close.price %in% first.k.lagged)
close.price[2:5]

c0 <- sum((close.price - mean(close.price)) * (close.price - mean(close.price)))/length(close.price)
c1 <- sum((first.k.lagged - mean(close.price)) * (last.k.lagged - mean(close.price)))/length(close.price)
c1/c0 # covariance divided by variance gives correlation.


# Function to compute acf vector.
compute.acf <- function(data) {
  # https://stats.stackexchange.com/questions/81754/understanding-this-acf-output/81764
  
  acf.vec <- rep(0, length(data))
  
  for (i in 1:length(data)) {
    first.k.lagged <- data[1:(length(data)-i)]
    last.k.lagged <- data[1:(length(data) - i ) + i]
    
    c0 <- sum((data - mean(data)) * (data - mean(data)))/length(data) 
    ck <- sum((first.k.lagged - mean(close.price)) * (last.k.lagged - mean(close.price)))/length(close.price) # The mean of the entire series is used even if 
    acf.vec[i] <- ck/c0
  }
  return(acf.vec)
}
acf.vec <- compute.acf(close.price)
print(acf.vec)
plot(acf.vec)
