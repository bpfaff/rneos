\name{NgetFinalResults}
\alias{NgetFinalResults}
\title{
  XML-RPC method getFinalResults of Neos 
}
\description{
  This functions calls the XML-RPC method \dQuote{getFinalResults()} of
  NEOS, which gets results of a job submitted to NEOS. If the job is still
  running, then this function will hang until the job is finished.
}

\usage{
NgetFinalResults(obj, convert = TRUE) 
}

\arguments{
  \item{obj}{NeosJob, an object of class \code{NeosJob} as returned by
  the function \code{NsubmitJob}.}
  \item{convert}{Logical, if \code{convert = TRUE} (the default) the
    value of the returned XML-RPC result is extracted and returned as
    character, otherwise the XML-RPC string is returned (base-64 encoded).}
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
  \code{\linkS4class{NeosAns}} and \code{\link{NsubmitJob}}
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
datc <- paste(paste(readLines(datf), collapse = "\n"), "\n")
## create list object
argslist <- list(model = modc, data = datc, commands = "",
comments = "")
## create XML string
xmls <- CreateXmlString(neosxml = template, cdatalist = argslist)
test <- NsubmitJob(xmlstring = xmls, user = "rneos", interface = "",
id = 0)
NgetFinalResults(obj = test, convert = TRUE)
}
}

\keyword{IO}
