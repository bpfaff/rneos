\name{NeosXml-class}
\Rdversion{1.1}
\docType{class}
\alias{NeosXml-class}
\alias{show,NeosXml-method}

\title{Class "NeosXml"}
\description{
  Objects of this class contain the returned results from NEOS as well
  as information on which kind of query has been sent and how it was sent. 
}

\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("NeosXml", ...)}
or more conveniently by calling the relevant R API functions.
}
\section{Slots}{
  \describe{
    \item{\code{xml}:}{Object of class \code{"XMLNode"}:
      The returned and converted XML-template of NEOS.}
    \item{\code{method}:}{Object of class \code{"character"}:
      The name of the called API function.}
    \item{\code{call}:}{Object of class \code{"call"}:
      The call to the generating function of the object.}
    \item{\code{nc}:}{Object of class \code{"NeosComm"}:
      The NeosComm object that has been used in the request to NEOS.}
  }
}

\section{Methods}{
  \describe{
    \item{show}{\code{signature(object = "NeosXml")}: Returns the
  converted slot \code{xml} from an object of class \code{NeosXml}.} 
  }
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
  \code{\linkS4class{NeosComm}}
}

\examples{
showClass("NeosXml")
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
NgetJobStatus(obj = test, convert = TRUE)
NgetJobInfo(obj = test, convert = TRUE)
NgetFinalResults(obj = test, convert = TRUE)
}
}
\keyword{classes}
\keyword{IO}
