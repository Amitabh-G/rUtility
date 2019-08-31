
 tryCatch(
    # This is what I want to do.
    # If executing more than one expression you need curly braces.
    {
    y = x * 2
    return(y)
    },
    # ... but if an error occurs, tell me what happened:
    error=function(error_message) {
        message("My message is here!")
        message("And below is the error message from R:")
        message(error_message)
        return(NA)
    }
)
