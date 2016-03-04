\name{NeosOff-class}
\Rdversion{1.1}
\docType{class}
\alias{NeosOff-class}
\alias{show,NeosOff-method}
\alias{update,NeosOff-method}

\title{Class "NeosOff"}
\description{
  Objects of this class contain among other slots the partial result and
  the offset.
}

\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("NeosOff", ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{ans}:}{Object of class \code{"character"}: The partial
      result returned from NEOS.}
    \item{\code{offset}:}{Object of class \code{"integer"}: The integer
      offset until the results have been returned.}
    \item{\code{jobnumber}:}{Object of class \code{"numeric"}: The
      returned job number.}
    \item{\code{password}:}{Object of class \code{"character"}: The
      returned pass word.}
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
    \item{update}{Updates an object of class \code{NeosOff}.}
  }
}


\references{
  NEOS API: \url{http://neos-guide.org/content/NEOS-API},\cr
  Omegahat web site for RCurl: \url{http://www.omegahat.net/RCurl},\cr
  Omegahat web site for XMLRPC: \url{http://www.omegahat.net/XMLRPC}
}

\author{
  Bernhard Pfaff
}

\examples{
showClass("NeosOff")
}
\keyword{classes}
\keyword{IO}
