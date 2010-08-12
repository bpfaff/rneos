##
## XML-RPC method: listSolversInCategory()
##
NlistSolversInCategory <- function(category, convert = TRUE, nc = CreateNeosComm(), checkcategory = FALSE) 
{
    if (!(class(nc) == "NeosComm")) {
        stop("\nObject provided for 'nc' must be of class 'NeosComm'.\n")
    }
    category <-  as.character(category)
    if(checkcategory){
      cats <- NlistCategories()@ans
      cats <- unlist(lapply(strsplit(cats, split = ":"), function(x) x[1]))
      if(!category %in% cats){
        stop(paste("\nSpecified category not available. Must be one of:\n", paste(cats, collapse = ", "), ".\n"))
      }
    }
    call <- match.call()
    ans <- xml.rpc(url = nc@url, method = "listSolversInCategory", .args = list(category = category), .convert = convert, .opts = nc@curlopts, .curl = nc@curlhandle)
    res <- new("NeosAns", ans = ans, method = "listCategories", call = call, nc = nc)
    return(res)
}
