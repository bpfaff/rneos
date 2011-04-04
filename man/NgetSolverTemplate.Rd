\name{NgetSolverTemplate}
\alias{NgetSolverTemplate}
\title{
  XML-RPC method getSolverTemplate of Neos 
}
\description{
  This functions calls the XML-RPC method \dQuote{getSolverTemplate()}
  of NEOS. If the solver category:solvername:inputMethod exists on NEOS,
  then an XML template is returned as an object of class \code{NeosXml}. 
}
\usage{
NgetSolverTemplate(category, solvername, inputMethod,
                   nc = CreateNeosComm())
}

\arguments{
  \item{category}{Character, the abbreviation of a category}
  \item{solvername}{Character, the name of the solver to be used.}
  \item{inputMethod}{Character, the name of the solver for which the
    xml-template shall be returned.}
  \item{nc}{Object of class \code{NeosComm}:
    By default, this argument is set by calling \code{CreateNeosComm()}
  and thereby using the default values of this function.}
}

\value{
  An object of class \code{NeosXml}.
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
  \code{\linkS4class{NeosXml}}, \code{\link{NlistAllSolvers}} and
  \code{\link{CreateNeosComm}}  
}

\examples{
\dontrun{

NgetSolverTemplate(category = "go", solvername = "ASA", inputMethod = "AMPL")
}
}
\keyword{IO}
