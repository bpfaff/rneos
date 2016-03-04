\name{NeosJob-class}
\Rdversion{1.1}
\docType{class}
\alias{NeosJob-class}
\alias{show,NeosJob-method}

\title{Class "NeosJob"}
\description{
  Objects of this class contain among other slots the returned jobnumber
  and password for jobs submitted to NEOS. Objects of this class can
  then be used for retrieving the optimization results. 
}

\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("NeosJob", ...)}
or more conveniently by calling the relevant R API function
\code{NsubmitJob}. 
}
\section{Slots}{
  \describe{
    \item{\code{jobnumber}:}{Object of class \code{"numeric"}:
      The returned job number.}
    \item{\code{password}:}{Object of class \code{"character"}:
      The returned pass word.}
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
    \item{show}{\code{signature(object = "NeosJob")}: Displays the slots
  \code{jobnumber} and \code{password} from an object of class
  \code{NeosJob}.}  
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

\examples{
showClass("NeosJob")
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
NsubmitJob(xmlstring = xmls, user = "rneos", interface = "", id = 0)
}
}
\keyword{classes}
\keyword{IO}
