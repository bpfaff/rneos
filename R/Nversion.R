##
## XML-RPC method: version()
##
Nversion <- function(convert = TRUE, nc = CreateNeosComm()){
  if(!(class(nc) == "NeosComm")){
    stop("\nObject provided for 'nc' must be of class 'NeosComm'.\n")
  }
  call <- match.call()
  ans <- xml.rpc(url = nc@url, method = "version", .convert = convert, .opts = nc@curlopts, .curl = nc@curlhandle)
  res <- new("NeosAns", ans = ans, method = "version", call = call, nc = nc)
  return(res)
}
