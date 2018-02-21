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
           col = c(4, 5, 6),
  # Change the label names for X and Y axes
           xlab = "Any name",
           ylab = "Any name",
  # Change the type of plot
           type = "p",
  # Change the symbol used
           pch = 19
           )

