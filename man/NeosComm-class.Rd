\name{NeosComm-class}
\Rdversion{1.1}
\docType{class}
\alias{NeosComm-class}

\title{Class "NeosComm"}

\description{
  The purpose of this class is to gather the relevant information needed
  for HTTP requests that is passed to NEOS.
}

\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("NeosComm", ...)}
or more conveniently by creating an object from \code{CreateNeosComm()}.

}
\section{Slots}{
  \describe{
    \item{\code{url}:}{Object of class \code{"character"}:
      The URL to NEOS, \emph{i.e.}, \url{http://www.neos-server.org}}
    \item{\code{curlopts}:}{Object of class \code{"list"}:
      A named list of valid Curl options.}
    \item{\code{curlhandle}:}{Object of class \code{"CURLHandle"}:
      Objects of this class can be created and altered with
      \code{getCurlHandle()}}
  }
}

\section{Methods}{
No methods defined with class "NeosComm" in the signature.
}

\references{
 Omegahat web site for RCurl: \url{http://www.omegahat.org/RCurl}, and\cr
 libcurl web site: \url{http://curl.haxx.se} 
}

\author{
  Bernhard Pfaff
}

\seealso{
  \code{\link{CreateNeosComm}}, \code{\link[RCurl]{getCurlHandle}} and
  \code{\link[RCurl]{CURLHandle-class}}
}

\examples{
showClass("NeosComm")
\dontrun{

nc <- CreateNeosComm()
nc
}
}
\keyword{classes}
\keyword{IO}
