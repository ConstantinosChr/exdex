## ------------------------------------------------------------------------
library(exdex)
# Set a threshold at the 90% quantile
thresh <- quantile(newlyn, probs = 0.90)
# MLE, SE and 95% likelihood-based confidence interval
mle <- kgaps_mle(newlyn, thresh, conf = 95)
mle$theta_mle
mle$theta_se
mle$theta_ci

## ----fig.width = 5 , fig.height= 5---------------------------------------
library(exdex)
# Set a number for the minimum and the maximum quantile level
threshplot( newlyn, tmin = 40, tmax = 80)

## ----fig.width = 5 , fig.height= 5---------------------------------------
threshplot(newlyn, 50, 60, 
  # Change the confidence interval
           conf = 50,
  # Change the line type
           lty = c(2, 1, 2),
  # Change the colours of the lines
           col = c(1, 5, 2),
  # Change the label names for X and Y axes
           xlab = "Any name",
           ylab = "Any name",
  # Change the type of plot
           type = "p",
  # Change the symbol used
           pch = 19
           )

## ------------------------------------------------------------------------
library(exdex)
# Decide on the block size and indicate whether to use sliding blocks or disjoint blocks 
# MLE, SE and 95% likelihood-based confidence interval
spm_mle(newlyn, 20, sliding = FALSE, conf = 95)
mle$theta_mle
mle$theta_se
mle$theta_ci

