list.of.packages <- c("ggplot2", "Rcpp", "tidyverse", "esquisse")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
print(new.packages)
if(length(new.packages) > 0) {
  install.packages(new.packages)
}
installed.packages()[,"Package"]
