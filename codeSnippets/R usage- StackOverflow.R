# StackOverflow query at 
# https://data.stackexchange.com/stackoverflow/query/338993/r-trends-questions-per-tag-per-month#resultSets


# Import data -------------------------------------------------------------

url <- "https://data.stackexchange.com/stackoverflow/csv/437426"
dat <- read.csv(url)
dat$Month <- as.Date(dat$Month)
head(dat)


# Plot monthly totals -----------------------------------------------------

library(ggplot2)
p1 <- ggplot(dat, aes(x = Month, y = Questions, group = TagName, colour = TagName)) + 
  geom_line(size = 1) + 
  theme_gray(20)
print(p1)


# Add trendline -----------------------------------------------------------

p2 <- ggplot(dat, aes(x = Month, y = Questions, group = TagName, colour = TagName)) + 
  geom_line(size = 1) + 
  geom_smooth(method = "loess") +
  theme_gray(16) +
  scale_y_log10()
print(p2)


# Compute forecast --------------------------------------------------------

library(forecast)

forecastTag <- function(x, tag, cumulative = FALSE){
  dat <- dat$Questions[x$TagName == tag]
  start <- x$Month[x$TagName == tag][1]
  year <- as.numeric(format(start, "%Y"))
  month <- as.numeric(format(start, "%m"))
  if(cumulative) dat <- cumsum(dat)
  dat <- ts(dat, start = c(year, month), frequency = 12)
  dat.ts <- auto.arima(dat)
  forecast(dat.ts)
}

oldpar <- par(mfrow = c(1, 2))
f.p <- forecastTag(dat, "python")
plot(f.p, main = "python")


# Plot forecast -----------------------------------------------------------

f.r <- forecastTag(dat, "r")
plot(f.r, main = "r")

par(oldpar)