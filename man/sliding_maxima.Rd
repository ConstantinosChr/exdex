% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/block_maxima.R
\name{sliding_maxima}
\alias{sliding_maxima}
\title{Sliding block maxima}
\usage{
sliding_maxima(x, b = 1)
}
\arguments{
\item{x}{A numeric vector of raw observations.}

\item{b}{A numeric scalar.  The block size.}
}
\value{
A list containing
  \itemize{
    \item {\code{y} : } {a numeric vector of the sliding block maxima.}
    \item {\code{x} : } {the input \code{x}, included for
      consistency with the output from \code{\link{disjoint_maxima}}}.
  }
}
\description{
Calculates the maxima of all blocks of \code{b} contiguous values in the
vector \code{x}.
}
\details{
The function \code{\link[zoo]{rollapply}} in the
\code{zoo} package is used with argument \code{FUN = max} to calculate
  sliding (rolling) maxima.  \code{na.rm = TRUE} is passed to
  \code{max} so that blocks containing missing values produce a
  non-missing result.

  \code{sliding_maxima} is used within \code{\link{spm_mle}} to perform
  semiparametric estimation of the extremal index based on block maxima.
}
\seealso{
\code{\link{spm_mle}} for semiparametric estimation of the
  extremal index based on block maxima.

\code{\link{disjoint_maxima}} for the calculation of the maxima
  over disjoint blocks.
}
