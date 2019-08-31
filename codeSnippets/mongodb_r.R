library(ggplot2)
library(dplyr)
library(maps)
library(ggmap)

library(lubridate)
library(gridExtra)
library(mongolite)
library(jsonlite)
library(rjson)
# crimes=data.table::fread("Crimes_2001_to_present.csv")
# names(crimes)
# 
# names(crimes) = gsub(" ","",names(crimes))
# names(crimes)

names_list = list("name" = "Amitabh")

my_collection = mongo(collection = "names_list", db = "Chicago") # create connection, database and collection
my_collection$insert(names_list)
my_collection$count()
my_collection$iterate()$one()

as.character(8)
