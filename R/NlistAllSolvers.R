##
## XML-RPC method: listAllSolvers()
##
NlistAllSolvers <- function(convert = TRUE, nc = CreateNeosComm()){
  if(!(class(nc) == "NeosComm")){
    stop("\nObject provided for 'nc' must be of class 'NeosComm'.\n")
  }
  call <- match.call()
  ans <- xml.rpc(url = nc@url, method = "listAllSolvers", .convert = convert, .opts = nc@curlopts, .curl = nc@curlhandle)
  res <- new("NeosAns", ans = ans, method = "listAllSolvers", call = call, nc = nc)
  return(res)
}
