\name{NeosAns-class}
\Rdversion{1.1}
\docType{class}
\alias{NeosAns-class}
\alias{show,NeosAns-method}

\title{Class "NeosAns"}
\description{
  Objects of this class contain the returned results from NEOS as well
  as information on which kind of query has been sent and how it was sent. 
}

\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("NeosAns", ...)}
or more conveniently by calling the relevant R API functions.
}
\section{Slots}{
  \describe{
    \item{\code{ans}:}{Object of class \code{"character"}: The returned
      XML-RPC of NEOS as character string.}
    \item{\code{method}:}{Object of class \code{"character"}: The name
      of the called API function.}
    \item{\code{call}:}{Object of class \code{"call"}: The call to the
      generating function of the object.}
    \item{\code{nc}:}{Object of class \code{"NeosComm"}: The NeosComm
      object that has been used in the request to NEOS.}
  }
}

\section{Methods}{
  \describe{
    \item{show}{\code{signature(object = "NeosAns")}: Returns the
  converted slot \code{ans} from an object of class \code{NeosAns}.} 
  }
}

\references{
  NEOS API: \url{http://www.neos-server.org/neos/NEOS-API.html},\cr
  Omegahat web site for RCurl: \url{http://www.omegahat.org/RCurl},\cr
  Omegahat web site for XMLRPC: \url{http://www.omegahat.org/XMLRPC}
}

\author{
  Bernhard Pfaff
}

\seealso{
  \code{\linkS4class{NeosComm}}
}

\examples{
showClass("NeosAns")
}

\keyword{classes}
\keyword{IO}
