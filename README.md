
<!-- README.md is generated from README.Rmd. Please edit that file -->
exdex
=====

### Estimation of the Extremal Index

### What does exdex do?

The `exdex` package uses threshold inter-exceedance times based on the *K*-gaps model described in Suveges and Davison (2010) and the method described in Northrop (2015) that is based on block maxima to estimate the extremal index. The extremal index measures how strong is the dependence between the threshold exceedances.

Installation
------------

You can install exdex from github with:

``` r
# install.packages("devtools")
devtools::install_github("ConstantinosChr/exdex")
```

A simple example
----------------

The two main functions in the `exdex` are `kgaps_mle` and `spm_mle` which are used to estimate the extremal index *θ*. The user chooses the extreme value model and provides the data. Additionally, the user for the *K*-gaps model chooses an extreme value threshold thresh that is applied to data, whereas for the block maxima method he chooses *b*, the block size.

For the *K*-gaps method:

``` r
library(exdex)
thresh <- quantile(newlyn, probs = 0.90)
k_res <- kgaps_mle(newlyn, thresh, conf = 95)
k_res$theta_mle
#> [1] 0.3779466
k_res$theta_se
#> [1] 0.02275285
k_res$theta_ci
#> [1] 0.3344465 0.4235232
```

For the block maxima method:

``` r
library(exdex)
spm_mle(newlyn, 20)
#> $theta_mle
#> [1] 0.2400835
spm_mle(newlyn, 20, sliding = FALSE)
#> $theta_mle
#> [1] 0.2415394
```

Vignette
--------

See `vignette("exdex-vignette", package = "exdex")` for an overview of the package.
