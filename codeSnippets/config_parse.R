library(yaml)
setwd("..")
config = yaml.load_file("config.yml")
dbConnect(PgSQL(), host=config$db$host, dbname=config$db$name, user=config$db$user, password=config$db$pass)
