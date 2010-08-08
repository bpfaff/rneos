##
## XML-RPC method: ping()
##
Nping <- function(convert = TRUE, nc = CreateNeosComm()){
  if(!(class(nc) == "NeosComm")){
    stop("\nObject provided for 'nc' must be of class 'NeosComm'.\n")
  }
  call <- match.call()
  ans <- xml.rpc(url = nc@url, method = "ping", .convert = convert, .opts = nc@curlopts, .curl = nc@curlhandle)
  res <- new("NeosAns", ans = ans, method = "ping", call = call, nc = nc)
  return(res)
}
