\name{CreateNeosComm}
\alias{CreateNeosComm}

\title{
  Creating an object for communications with NEOS
}

\description{
  This function creates an object of class \code{NeosComm} that will
  contain all necessary information for dealing with HTTP requests to
  NEOS. This object will be needed in all requests to NEOS and hence
  must be created in advance of XML-RPC requests.
}

\usage{
CreateNeosComm(curlopts = list(httpheader = c(`Content-Type` =
"text/xml", `User-Agent` = "R"), port = 3332), curlhandle =
getCurlHandle())
}

\arguments{
  \item{curlopts}{A named list of elements that are passed as options to
  curl. By default, the \code{httpheader} and the \code{port} options
  are preset.}
  \item{curlhandle}{An object of class \code{CURLHandle}. By default the
  returned object of getCurlHandle() is employed.}
}

\details{
  A list of valid \code{curl} options can be retrieved from
  \code{listCurlOptions()}. Please note, that the relevant HTTP-bodies
  within the requests will be created directly in the API-functions
  provided in this package and must not be provided as list elements in
  \code{curloptions}. However, if one accesses NEOS \emph{via} a
  Proxy-Server, for instance, than the values for the relevant options
  must be set within the list-argument \code{curlopts}.
  The values of the returned object will be passed down to the function
  \code{xml.rpc()} which is utilised for all calls to the function
  \code{Nfoo} contained in this package. Hereby, \code{foo} signify the
  name of NEOS-API.
}

\value{
  An object of class \code{NeosComm}.
}

\references{
  NEOS API: \url{http://www.neos-server.org/neos/NEOS-API.html},\cr
  Omegahat web site for RCurl: \url{http://www.omegahat.org/RCurl},\cr
  Omegahat web site for XMLRPC: \url{http://www.omegahat.org/XMLRPC},\cr  
  libcurl web site: \url{http://curl.haxx.se} 
}

\author{
  Bernhard Pfaff
}

\seealso{
  \code{\linkS4class{NeosComm}}
}

\examples{
\dontrun{

nc <- CreateNeosComm()
nc
}
}

\keyword{IO}
