% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exdex.R
\docType{data}
\name{terrorism}
\alias{terrorism}
\title{Worldwide Terrorism Incidents}
\format{A dataframe with 40129 rows an 8 columns.}
\source{
The RAND Database of Worldwide Terrorism Incidents.
  \url{https://www.rand.org/nsrd/projects/terrorism-incidents/download.html}
}
\usage{
terrorism
}
\description{
A database of information about terrorism incidents produced by the
\href{https://www.rand.org/}{RAND corporation} spanning the time period
1968 - 2009.
}
\details{
The dataframe \code{terrorism} contains 40129 rows and the following 8
columns:
  \itemize{
    \item{Column 1, \code{Date}: }{The date in the format YYYY-MM-DD.
    Has class "Date".}
    \item{Column 2, \code{City}: }{The city in which the incident took
    place.}
    \item{Column 3, \code{Country}: }{The country in which the incident took
    place.}
    \item{Column 4, \code{Perpetrator}: }{The group responsible for the
    incident (if known).}
    \item{Column 5, \code{Weapon}: }{The weapon used (if known).}
    \item{Column 6, \code{Injuries}: }{The number of people injured.}
    \item{Column 7, \code{Fatalities}: }{The number of people killed.}
    \item{Column 8, \code{Description}: }{A brief description of the
    incident.}
 }
A subset of these data (1968-2007 only) are analysed in Clauset and
Woodard (2013).
}
\references{
Clauset, A. and Woodard, R. (2013) Estimating the historical and
  future probabilities of large terrorist events, \emph{The Annals of
  Applied Statistics}, \strong{7}(4), 1838-1865.
  \url{http://dx.doi.org/10.1214/12-AOAS614}
}
\keyword{datasets}
