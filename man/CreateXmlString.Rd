\name{CreateXmlString}
\alias{CreateXmlString}

\title{
  Inserting CDATA into XML-templates of NEOS
}
\description{
  With this function the information for XML-templates can be
  inserted. Ordinarily, one creates an object with the function
  \code{NgetSolverTemplate()} first and then inserts the
  requested CDATA fields of this XML-form with this function.
}

\usage{
CreateXmlString(neosxml, cdatalist)
}

\arguments{
  \item{neosxml}{An object of class \code{NeosXml} created with the
    function \code{NgetSolverTemplate()}.
}
  \item{cdatalist}{A named list object with the CDATA tags to be filled.
}
}

\value{A character string containing the specified optimization
       problem, which can then be used in a call to \code{NsubmitJob()}.
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
  \code{\linkS4class{NeosXml}} and \code{\link{NgetSolverTemplate}}
}

\examples{
\dontrun{

tmp <-NgetSolverTemplate(category = "go", solvername = "ASA",
inputMethod = "AMPL")
## setting path to example model and data file
modf <- system.file("ExAMPL", "diet.mod", package = "rneos")
datf <- system.file("ExAMPL", "diet.dat", package = "rneos")
## import of file contents
modc <- paste(paste(readLines(modf), collapse = "\n"), "\n")
cat(modc)
datc <- paste(paste(readLines(datf), collapse = "\n"), "\n")
cat(datc)
## create list object
argslist <- list(model = modc, data = datc, commands = "",
comments = "")
## create XML string
xmls <- CreateXmlString(neosxml = template, cdatalist = argslist)
xmls
}
}
\keyword{IO}
