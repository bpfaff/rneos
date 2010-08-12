##
## show-method for objects of class NeosAns
##
setMethod("show", "NeosAns", function(object){
  if(is.character(object@ans) && length(object@ans) == 1){
    cat("\n")
    cat(object@ans)
    cat("\n")
  } else {
    print(object@ans)
  }
})
