\name{NeosJob-class}
\Rdversion{1.1}
\docType{class}
\alias{NeosJob-class}

\title{Class "NeosJob"}
\description{
  Objects of this class contain among other slots the returned jobnumber
  and password for jobs submitted to NEOS. Objects of this class can
  then be used for retrieving the optimisation results. 
}

\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("NeosJob", ...)}
or more conveniently by calling the relevant R API function \code{NsubmitJob}.
}
\section{Slots}{
  \describe{
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

\references{
  NEOS API: \url{http://neos.mcs.anl.gov/neos/NEOS-API.html},\cr
  Omegahat web site for RCurl: \url{http://www.omegahat.org/RCurl},\cr
  Omegahat web site for XMLRPC: \url{http://www.omegahat.org/XMLRPC}
}

\author{
  Bernhard Pfaff
}

\examples{
showClass("NeosJob")
}
\keyword{classes}
\keyword{IO}
