#' Semiparametric maxima estimator of the extremal index
#'
#' Calculates the semiparametric maxima estimator of the extremal index
#' \eqn{\theta} based on sliding or disjoint block maxima.
#'
#' @param data A numeric vector of raw data.
#' @param b A numeric scalar.  The block size.
#' @param sliding A logical scalar.
#' @param constrain A logical scalar.
#' @details If \code{sliding = TRUE} then the function uses sliding block maxima
#' whereas if \code{sliding = FALSE} then disjoint block maxima are used
#' instead.
#'
#' If \code{constrain = TRUE} then ...
#' @return A list containing
#'   \itemize{
#'     \item {\code{theta_mle} : } {The maximum likelihood estimate (MLE) of
#'       \eqn{\theta}.}
#'     \item {\code{theta_se} : } {The estimated standard error of the MLE.}
#'     \item {\code{theta_ci} : } {(If \code{conf} is supplied) a numeric
#'       vector of length two giving lower and upper confidence limits for
#'       \eqn{\theta}.}
#'   }
#' @seealso \code{\link{kgaps_mle}} for maximum likelihood estimation of the
#'   extremal index \eqn{\theta} using the K-gaps model.
#' @references Northrop, P. J. (2015) \emph{An efficient semiparametric maxima
#' estimator of the extremal index} Extremes, \strong{18}(4), 585-603.
#' \url{http://dx.doi.org/10.1007/s10687-015-0221-5}
#' @examples
#' spm_mle(newlyn, 20)
#' spm_mle(newlyn, 20, sliding = FALSE)
#' @export
spm_mle <- function(data, b, sliding = TRUE, constrain = TRUE){
  # Calculate the required block maxima
  if (sliding) {
    temp <- sliding_maxima(data, b)
  } else {
    temp <- disjoint_maxima(data, b)
  }
  # Extract x ~ F (only xs contributing to y are included) and y ~ G
  x <- temp$x
  y <- temp$y
  # Empirical c.d.f. of raw (`daily') values
  Fhat <- stats::ecdf(x)
  # Evaluate Fx at y
  Fhaty <- Fhat(y)
  # `Bias-adjust' the empirical c.d.f. of based on the Xs: by subtracting b in
  # numerator and denominator we remove Xs that are in the same block as Y
  # We use of m-b in the denominator rather than the m-b+1 in Northrop (2015)
  m <- length(x)
  Fhaty <- (m * Fhaty - b) / (m - b)
  # Calculate the estimate of theta
  log_v <- b * log(Fhaty)
  theta_mle <- -1 / mean(log_v)
  # Constrain to (0, 1] if required
  if (constrain) {
    theta_mle <- pmin(theta_mle, 1)
  }
  return(theta_mle)
}
