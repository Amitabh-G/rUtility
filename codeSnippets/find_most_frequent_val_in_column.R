table(ChickWeight$Diet)
ChickWeight$Diet
table(ChickWeight$Diet,  dnn = "Observations per diet")
tail(names(sort(table(ChickWeight$Diet), decreasing = F, na.last = T)), 1)
