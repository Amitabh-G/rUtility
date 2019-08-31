tryCatch(sm <- 2 + 4, error=function(error_message) { sm <- NA })
sm
