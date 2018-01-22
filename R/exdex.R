#' exdex: Estimation of the Extremal Index
#'
#' Performs frequentist inference for the extremal index using the methodologies
#' described in Suveges and Davison (2010)  \url{http://dx.doi.org/10.1214/09-AOAS292} and in
#' Northrop (2015) \url{http://dx.doi.org/10.1007/s10687-015-0221-5}.
#' This is done in two ways, based on the two main forms of extreme value theory.
#' One is based on exceedances of a high threshold, the other is based on the
#' behaviour of the r largest order statistics within a block, for small values
#' of r.
#'
#' @details Add details.
#'
#'   See \code{vignette("exdex-vignette", package = "exdex")} for an
#'   overview of the package.
#' @references Suveges, M. and Davison, A. C. (2010) Model
#'   misspecification in peaks over threshold analysis, \emph{The Annals of
#'   Applied Statistics}, \strong{4}(1), 203-221.
#'   \url{http://dx.doi.org/10.1214/09-AOAS292}
#' @references Attalides, N. (2015) Threshold-based extreme value modelling,
#'   PhD thesis, University College London.
#'   \url{http://discovery.ucl.ac.uk/1471121/1/Nicolas_Attalides_Thesis.pdf}
#' @docType package
#' @name exdex
#' @import methods
NULL

#' Newlyn sea surges
#'
#' The vector \code{newlyn} contains 2894 maximum sea-surges measured at
#' Newlyn, Cornwall, UK over the period 1971-1976. The observations are
#' the maximum hourly sea-surge heights over contiguous 15-hour time
#' periods.
#' @format A vector of length 2894.
#' @source Coles, S.G. (1991) Modelling extreme multivariate events. PhD thesis,
#'   University of Sheffield, U.K.
#' @references Fawcett, L. and Walshaw, D. (2012) Estimating return levels from
#'   serially dependent extremes. \emph{Environmetrics}, \strong{23}(3),
#'   272-283.  \url{https://doi.org/10.1002/env.2133}
#' @references Northrop, P. J. (2015) An efficient semiparametric maxima
#'   estimator of the extremal index. \emph{Extremes}, \strong{18},
#'   585-603.  \url{https://doi.org/10.1007/s10687-015-0221-5}
"newlyn"
