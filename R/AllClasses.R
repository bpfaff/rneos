##
## Class for NEOS communication objects
##
setClass("NeosComm", representation(url = "character", curlopts = "list", curlhandle = "CURLHandle"))
##
## Class for returned Values from requests to NEOS 
##
setClass("NeosAns", representation(ans = "character", method = "character", call = "call", nc = "NeosComm"))
