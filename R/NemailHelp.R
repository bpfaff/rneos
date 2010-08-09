##
## XML-RPC method: emailHelp()
##
NemailHelp <- function(convert = TRUE, nc = CreateNeosComm()){
  if(!(class(nc) == "NeosComm")){
    stop("\nObject provided for 'nc' must be of class 'NeosComm'.\n")
  }
  call <- match.call()
  ans <- xml.rpc(url = nc@url, method = "emailHelp", .convert = convert, .opts = nc@curlopts, .curl = nc@curlhandle)
  res <- new("NeosAns", ans = ans, method = "emailHelp", call = call, nc = nc)
  return(res)
}
