\name{CreateXmlString}
\alias{CreateXmlString}

\title{
  Inserting CDATA into XML-templates of NEOS
}
\description{
  With this function the information for XML-template can be
  inserted. Ordinarily, one creates an object with the function
  \code{NgetSolverTemplate()} first and then inserts the requested CDATA
  fields of this XML-form with this function.
}

\usage{
CreateXmlString(neosxml, cdatalist)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{neosxml}{An object of class \code{NeosXml} created with the
    function \code{NgetSolverTemplate()}.
}
  \item{cdatalist}{A named list object with the CDATA tags to be filled.
}
}

\value{A character string containing the specified optimisation problem,
  which can then be used in a call to \code{NsubmitJob()}.
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
  \code{\linkS4class{NeosXml-class}}, \code{\link{NgetSolverTemplate}}
}

\examples{
\dontrun{
tmp <-NgetSolverTemplate(category = "go", solvername = "ASA", inputMethod = "AMPL")
argslist <- list(model = "best", data = "weird", commands = "", comments = "test")
CreateXmlString(tmp, cdatalist = argslist)
}
}
\keyword{IO}
