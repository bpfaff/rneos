##
## XML-RPC method: killJob()
##
NkillJob <- function(obj, convert = TRUE){
  if(!(class(obj) == "NeosJob")){
    stop("\nObject 'obj' is not of class 'NeosJob'.\n")
  }
  call <- match.call()
  jobnumber <- obj@jobnumber
  password <- obj@password
  nc <- obj@nc
  ans <- xml.rpc(url = nc@url, method = "killJob", .args = list(jobnumber = jobnumber, password = password), .convert = convert, .opts = nc@curlopts, .curl = nc@curlhandle)
  res <- new("NeosAns", ans = ans, method = "killJob", call = call, nc = nc)
  return(res)
}
