\name{NgetJobInfo}
\alias{NgetJobInfo}
\title{
  XML-RPC method getJobInfo of Neos 
}
\description{
  This functions calls the XML-RPC method \dQuote{getJobInfo()} of NEOS and
  returns an object of class \code{NeosAns}. 
}
\usage{
NgetJobInfo(obj, convert = TRUE)
}

\arguments{
  \item{obj}{Object of class \code{NeosJob}, as returned by the function
  \code{NsubmitJob}.} 
  \item{convert}{Logical, if \code{convert = TRUE} (the default) the
    value of the returned XML-RPC result is extracted and returned as
    character, otherwise the XML-RPC string is returned.}
}

\value{
  An object of class \code{NeosAns} containing the category, solver,
  input method and job status.
}

\references{
  NEOS API: \url{http://neos.mcs.anl.gov/neos/NEOS-API.html},\cr
  Omegahat web site for RCurl: \url{http://www.omegahat.org/RCurl},\cr
  Omegahat web site for XMLRPC: \url{http://www.omegahat.org/XMLRPC}
}

\author{
  Bernhard Pfaff
}

\seealso{
  \code{\linkS4class{NeosAns-class}}, \code{\linkS4class{NeosJob-class}}
  and \code{\link{NgetJobStatus}}
}

\keyword{IO}
