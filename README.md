
# rodgercontrasts

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of `rodgercontrasts` is to implement Rodgerian methods for post hoc contrasts in R. This package is currently under development and contains minimal functionality.

## Installation

You can install the development version of rodgercontrasts from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("CrumpLab/rodgercontrasts")
```

## Example

Find Rodger's critical F for post-hoc mutually orthogonal linear contrasts.

``` r
library(rodgercontrasts)
f_e_alpha(v1 = 2, v2 = 12, alpha = .05)
```

