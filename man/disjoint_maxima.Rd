% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/block_maxima.R
\name{disjoint_maxima}
\alias{disjoint_maxima}
\title{Disjoint block maxima}
\usage{
disjoint_maxima(x, b = 1)
}
\arguments{
\item{x}{A numeric vector of raw observations.}

\item{b}{A numeric scalar.  The block size.}
}
\value{
A list containing
  \itemize{
    \item {\code{y} : } {the sliding block maxima.}
    \item {\code{x} : } {the subset of the input \code{x} that contributes
      to the values in \code{y}.}
  }
}
\description{
Calculates the maxima of disjoint blocks of \code{b} contiguous values in
the vector \code{x}.
}
\details{
If \code{length(x)} is not an integer multiple of \code{b} then
  only the first \code{b * floor(n / b)} observations in \code{x} are used.
  \code{na.rm = TRUE} is passed to \code{max} so that blocks containing
  missing values produce a non-missing result.

  \code{disjoint_maxima} is used within \code{\link{spm_mle}} to perform
  semiparametric estimation of the extremal index based on block maxima.
}
\seealso{
\code{\link{spm_mle}} for semiparametric estimation of the
  extremal index based on block maxima.

\code{\link{sliding_maxima}} for the calculation of the maxima
  over sliding blocks.
}
