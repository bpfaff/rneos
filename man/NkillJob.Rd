\name{NkillJob}
\alias{NkillJob}
\title{
  XML-RPC method killJob of Neos 
}
\description{
 This method is used to cancel a job submission running on NEOS (or
 waiting to run on NEOS). The job password is required to prevent abuse  
 of this function (extracted from relevant slot of \code{obj}). This
 functions calls the XML-RPC method \dQuote{killJob()} of NEOS and
 returns an object of class \code{NeosAns}.  
}
\usage{
NkillJob(obj, killmsg = NULL, convert = TRUE)
}

\arguments{
  \item{obj}{Object of class \code{NeosJob}, as returned by the function
    \code{NsubmitJob}.}
  \item{killmsg}{Character, optional description.} 
  \item{convert}{Logical, if \code{convert = TRUE} (the default) the
    value of the returned XML-RPC result is extracted and returned as
    character, otherwise the XML-RPC string is returned.}
}

\value{
  An object of class \code{NeosAns} containing the returned message from
  NEOS.
}

\references{
  NEOS API: \url{http://neos-guide.org/content/NEOS-API},\cr
  Omegahat web site for RCurl: \url{http://www.omegahat.net/RCurl},\cr
  Omegahat web site for XMLRPC: \url{http://www.omegahat.net/XMLRPC}
}

\author{
  Bernhard Pfaff
}

\seealso{
  \code{\linkS4class{NeosAns}} and \code{\linkS4class{NeosJob}}
}

\keyword{IO}
