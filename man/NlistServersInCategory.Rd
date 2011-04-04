\name{NlistSolversInCategory}
\alias{NlistSolversInCategory}
\title{
  XML-RPC method listSolversInCategory of Neos 
}
\description{
  This functions calls the XML-RPC method
  \dQuote{listSolversInCategory()} of NEOS and returns an object of
  class \code{NeosAns}. The returned content is a list of solver:input
  for every solver in the category (category can be abbreviation or
  full\_name).  
}
\usage{
NlistSolversInCategory(category, convert = TRUE,
                       nc = CreateNeosComm())
}

\arguments{
  \item{category}{Character, the abbreviation of a category}
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
  \code{\linkS4class{NeosAns}}, \code{\link{NlistCategories}} and
  \code{\link{CreateNeosComm}}  
}

\examples{
\dontrun{

NlistSolversInCategory(category = "go")
}
}
\keyword{IO}
