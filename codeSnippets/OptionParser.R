############################################################################
### Value at risk implementation using parametric and historical method. ###
############################################################################

suppressWarnings(suppressMessages(library(optparse)))
suppressWarnings(suppressMessages(library(readxl)))
suppressWarnings(suppressMessages(library(jsonlite)))
suppressWarnings(suppressMessages(library(RJSONIO)))

setwd(".")

##################################################################################################
### Parsing command line arguments. The arguments are optional. Their positions are not fixed. ###
##################################################################################################

option_list <- list(
  
  make_option(c("-m", "--meta"), action = "store", type = "character"
              , default = NULL, help = "Pass the path of the meta file."),
  
  make_option(c("-d", "--data"), action = "store", type = "character"
              , default = NULL, help = "Pass the path of the input data file."),
  
  make_option(c("-i", "--interval"), action = "store", type = "character"
              , default = NULL, help = "The detected interval from the RScript."),
  
  make_option(c("-g", "--groupby"), action = "store", type = "character"
              , default = NULL, help = "The desired frequency that has to be used for finding anomalies."),
  
  make_option(c("-s", "--sd"), action = "store",  type = "integer", default = 3
              , help = "The standard deviation for which anomaly has to be found."),
  
  make_option(c("-o", "--Outpath"), action = "store",type = "character", default = NULL
              , help = "The path where output has to be written.")
  
)

parser <- OptionParser(option_list = option_list)
arguments <- parse_args(parser)
meta <- arguments$meta
Inpath <- arguments$data
SD <- arguments$sd
Outpath <- arguments$Outpath
FreqString <- arguments$groupby



#######################################
### Exception handling for parsing. ###
#######################################

if (is.null(arguments$meta)){
  write("Must provide meta data path. Stopping!", stderr())
  stop(call. = FALSE)
}

if (is.null(arguments$data)){
  write("Must provide data path. Stopping!", stderr())
  stop(call. = FALSE)
  
}
if (is.null(arguments$Outpath)){
  write("Must provide path for writing to a file. Stopping!", stderr())
  stop(call. = FALSE)
}
if (is.null(arguments$interval) & is.null(arguments$groupby)==FALSE){
  write("Must provide interval and groupby together", stderr())
  stop(call. = FALSE)
  
} else if (is.null(arguments$interval) ==FALSE & is.null(arguments$groupby)){
  write("Must provide interval and groupby together", stderr())
  stop(call. = FALSE)
  
}








