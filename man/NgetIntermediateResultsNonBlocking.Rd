\name{NgetIntermediateResultsNonBlocking}
\alias{NgetIntermediateResultsNonBlocking}
\title{
  XML-RPC method getIntermediateResultsNonBlocking of Neos 
}
\description{
  This functions calls the XML-RPC method
  \dQuote{getIntermediateResultsNonBlocking()} of NEOS, which returns
  intermediate results of a job submitted to NEOS, starting at the
  character offset up to the last received data. Intermediate results
  are usually the standard output of the solver daemon. If the job is
  still running, then this function will hang until another packet of
  output is sent to NEOS or the job is finished. This function will
  return a tuple of thebase-64 encoded object and the new offset
  (object, newoffset). The offset refers to uncoded characters.  
}
\usage{
NgetIntermediateResultsNonBlocking(obj, offset = NULL,
                                   convert = TRUE)
}

\arguments{
  \item{obj}{NeosJob, an object of class \code{NeosJob} as returned by
  the function \code{NsubmitJob}.}
  \item{offset}{Integer, the offset from which on the results are
  returned. In a first run this is set to \code{integer(0)}.}
  \item{convert}{Logical, if \code{convert = TRUE} (the default) the
    value of the returned XML-RPC result is extracted and returned as
    character, otherwise the XML-RPC string is returned (base-64 encoded).}
}

\value{
  An object of class \code{NeosOff}.
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
  \code{\linkS4class{NeosOff}} and \code{\link{NsubmitJob}}
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
NgetIntermediateResultsNonBlocking(obj = test, convert = TRUE)
}
}

\keyword{IO}
