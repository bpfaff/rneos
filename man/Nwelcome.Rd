\name{Nwelcome}
\alias{Nwelcome}
\title{
  XML-RPC method welcome of Neos 
}

\description{
  This functions calls the XML-RPC method \dQuote{welcome()} of NEOS and
  returns an object of class \code{NeosAns}, which is a welcome message
  (string).  
}
\usage{
Nwelcome(convert = TRUE, nc = CreateNeosComm())
}

\arguments{
  \item{convert}{Logical, if \code{convert = TRUE} (the default) the
    value of the returned XML-RPC result is extracted and returned as
    character, otherwise the XML-RPC string is returned.}
  \item{nc}{Object of class \code{NeosComm}:
    By default, this argument is set by calling \code{CreateNeosComm()}
  and thereby using the default values of this function.}
}

\value{
  An object of class \code{NeosAns}.
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
  \code{\linkS4class{NeosAns}} and \code{\link{CreateNeosComm}} 
}

\examples{
\dontrun{

Nwelcome()
}
}
\keyword{IO}
