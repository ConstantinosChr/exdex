#' exdex: Estimation of the Extremal Index
#'
#' Performs frequentist inference for the extremal index using the methodologies
#' described in Suveges and Davison (2010)  \url{http://dx.doi.org/10.1214/09-AOAS292} and in
#' Northrop (2015) \url{http://dx.doi.org/10.1007/s10687-015-0221-5}.
#' This is done in two ways, based on the two main forms of extreme value theory.
#' One uses threshold inter-exceedance times based on the K-gaps model and the
#' other one is based on block maxima.
#'
#' @details The main functions in the exdex package are \code{\link{kgaps_mle}}
#' and \code{\link{spm_mle}} which are used to estimate the extremal index
#' \eqn{\theta}. The user chooses the extreme value model and provides the data.
#' Additionally, the user for the \eqn{K}-gaps model chooses an extreme value
#' threshold \eqn{thresh} that is applied to data, whereas for the block maxima
#' method he chooses \eqn{b}, the block size.
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
#' @seealso \code{\link{kgaps_mle}} to calculate the maximum likelihood estimates
#' of the extremal index \eqn{\theta} based on the K-gaps model for threshold
#' inter-exceedances times of Suveges and Davison (2010).
#' @seealso \code{\link{spm_mle}} to calculate the semiparametric maxima
#' estimator of the extremal index \eqn{\theta} based on sliding or disjoint
#' block maxima based on Northrop (2015).
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
