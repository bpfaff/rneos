##
## Class for NEOS communication objects
##
setClass("NeosComm", representation(url = "character", curlopts = "list", curlhandle = "CURLHandle"))

