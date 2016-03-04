\name{NgetJobInfo}
\alias{NgetJobInfo}
\title{
  XML-RPC method getJobInfo of Neos 
}
\description{
  This functions calls the XML-RPC method \dQuote{getJobInfo()} of NEOS and
  returns a four-tuple (category, solver name, input, status).
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
  An object of class \code{NeosAns}.
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
  \code{\linkS4class{NeosAns}}, \code{\linkS4class{NeosJob}}
  and \code{\link{NgetJobStatus}}
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
NgetJobInfo(obj = test, convert = TRUE)
}
}

\keyword{IO}
