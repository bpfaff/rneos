##
## NEOS: getSolverTemplate 
##
NgetSolverTemplate <- function(category, solvername, inputMethod, nc = CreateNeosComm()){
  if (!(class(nc) == "NeosComm")) {
    stop("\nObject provided for 'nc' must be of class 'NeosComm'.\n")
  }
  call <- match.call()
  ans <- xml.rpc(url = nc@url, method = "getSolverTemplate", .args = list(category = category, solvername = solvername,inputMethod = inputMethod), .convert = TRUE, .opts = nc@curlopts, .curl = nc@curlhandle)
  xml <- xmlRoot(xmlTreeParse(ans, asText = TRUE))
  res <- new("NeosXml", xml = xml, method = "getSolverTemplate", call = call, nc = nc)
  return(res)
}
