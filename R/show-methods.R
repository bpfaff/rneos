##
## show-method for objects of class NeosAns
##
setMethod("show", "NeosAns", function(object){
  cat("\n")
  cat(object@ans)
  cat("\n")
})
