#' @export
mlevsthresh <- function (data, tmin, tmax){

  quant <- seq ( tmin , tmax , by = 1)

  quant

  x <- (tmax - tmin) + 1

  mplot<- matrix ( 0 ,nrow = x , ncol = 2, byrow = TRUE,dimnames = list( NULL ,
                   c("Theta", "Quantile")))
  ci <- matrix ( 0 ,nrow = x , ncol = 2, byrow = TRUE,dimnames = list( NULL ,
                c("Lower", "Upper")))

  for( i in 1:x){

    p <- quant[i]/100
    thresh <- quantile( data, probs = p)
    theta <- kgaps_mle( data, thresh, conf = 95)
    mplot[ i, 2 ] <- p
    mplot[ i, 1 ] <- theta$theta_mle
    ci[ i, 1 ] <- theta$theta_ci[1]
    ci[ i, 2 ] <- theta$theta_ci[2]

  }

  print(mplot)
  print(ci)

  plot( mplot[ , "Quantile" ] , mplot[ , "Theta"] , type = "l" , main = " Theta vs Thresh"
        , col = "red" , lwd = 2 , xlab = "Thresh" , ylab = "Theta")

}
