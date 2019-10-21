strsplit("a.b.c", "[.]")
strsplit("a.b.c", ".")
vec = unlist(strsplit("a/b/c", "[/]"))
vec[1:2]
vec[1:]
head( vec, -2)

vec2 = unlist(strsplit("http://192.168.1.225:8484/data/5d907cd2-7785-4d34-bcda-aa84b2158415/contract", "[/]"))
vec2
head( vec2, -2)

vec3 = unlist(strsplit("http://192.168.1.225:8484/data/5d907cd2-7785-4d34-bcda-aa84b2158415/contract", "[//]"))
vec3
vec_red = head( vec3, -2)
paste0(vec3)
vec3[1]
vec3[2]
vec3[3]
vec3[4]
paste0(vec3[1], "//", vec3[3], "/", vec3[4])
vec_red
Sys.getenv(c("EKA_CONNECT_HOST"))

a <- c(1, 2, NULL)
length(a)
b <- c(NULL, NULL)
length(b)


as.list(vec, )
lapply(lolz, `length<-`, max(lengths(lolz)))

vec_list <- sapply(vec, '<-' , NA)
vec_list

vec <- c("a", "v", "n")
na.list <- rep(NA, length(vec))
vec.list <- as.list(setNames(na.list, vec))
vec.list

avc <-  list("loadingLocationGroupTypeId" = NA, "originationCityId" = NA)
avc

vec.n <- c(vec, a)
vec.n
vec.n.list <- list(vec, a)
vec.n.list[[1]]

which(1 == a)
"v" %in% a
a <- c(1,2, 1, 3, 2)
g <- c("one", 2, "onee")
which(a == 1)
g[which(a == 1)]

vec %in% a
any(a == 1)

# sub function in R

mysentence <- "England is Beautiful. England is not the part of EU"
sub("England", "UK", mysentence)
gsub("Ëngland", "UK", mysentence)

mysentence <- "England is Beautiful. England is not the part of EU"
gsub("England", "UK", mysentence)



















