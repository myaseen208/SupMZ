
## `SupMZ`: Detecting Structural Change with Heteroskedasticity

###### Version : [0.3.0](https://myaseen208.github.io/SupMZ/); Copyright (C) 2019-2020: [UAF](http://uaf.edu.pk//); License: [GPL-2|GPL-3](https://www.r-project.org/Licenses/)

##### *Muhammad Yaseen<sup>1</sup>, Sami Ullah<sup>1,</sup> <sup>2</sup>, and Gulfam Haider<sup>3</sup>*

1.  Department of Mathematics and Statistics, University of Agriculture
    Faisalabad, Pakistan.
2.  College of Agriculutre, University of Sargodha, Pakistan.
3.  Fast School of Management, FAST National University of Computer and
    Emerging Sciences, Chiniot Faisalabad Campus, Pakistan.

-----

[![minimal R
version](https://img.shields.io/badge/R%3E%3D-3.5.0-6666ff.svg)](https://cran.r-project.org/)
[![License: GPL
v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version-last-release/SupMZ)](https://cran.r-project.org/package=SupMZ)
[![rstudio mirror
downloads](https://cranlogs.r-pkg.org/badges/grand-total/SupMZ?color=green)](https://CRAN.R-project.org/package=SupMZ)
<!-- [![packageversion](https://img.shields.io/badge/Package%20version-0.2.3.3-orange.svg)](https://github.com/myaseen208/SupMZ) -->

[![develVersion](https://img.shields.io/badge/devel%20version-0.2.0-orange.svg)](https://github.com/myaseen208/SupMZ)

<!-- [![GitHub Download Count](https://github-basic-badges.herokuapp.com/downloads/myaseen208/SupMZ/total.svg)] -->

[![Project Status:
WIP](http://www.repostatus.org/badges/latest/inactive.svg)](http://www.repostatus.org/#inactive)
[![lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)
[![Last-changedate](https://img.shields.io/badge/last%20change-2020--01--17-yellowgreen.svg)](https://github.com/myaseen208/SupMZ)
[![Rdoc](http://www.rdocumentation.org/badges/version/SupMZ)](http://www.rdocumentation.org/packages/SupMZ)
[![Analytics](https://pro-pulsar-193905.appspot.com/UA-116716530-1/welcome-page)](https://github.com/myaseen208/google-analytics-beacon)

-----

## Description

Calculates the sup MZ value to detect the unknown structural break
points under Heteroskedasticity as given in Ahmed et al. (2017) (\<DOI:
10.1080/03610926.2016.1235200\>).

## Installation

The package can be installed from CRAN as follows:

``` r
install.packages("SupMZ", dependencies = TRUE)
```

The development version can be installed from github as follows:

``` r
if (!require("remotes")) install.packages("remotes")
devtools::install_github("myaseen208/SupMZ")
```

## Detailed tutorial

For a detailed tutorial (vignette) on how to used this package type:

``` r
browseVignettes(package = "SupMZ")
```

The vignette for the latest version is also available
[online](https://myaseen208.github.io/SupMZ/articles/IntroSupMZ.html).

## What’s new

To know whats new in this version type:

``` r
news(package = "SupMZ")
```

## Links

[CRAN page](https://cran.r-project.org/package=SupMZ)

[Github page](https://github.com/myaseen208/SupMZ)

[Documentation website](https://myaseen208.github.io/SupMZ/)

## Citing `SupMZ`

To cite the methods in the package use:

``` r
citation("SupMZ")
```

``` 

To cite the R package 'SupMZ' in publications use:

  Muhammad Yaseen, Sami Ullah, and Gulfam Haider (2020).  SupMZ:
  Detecting Structural Change with Heteroskedasticity.R package version
  0.3.0 ,
  https://myaseen208.github.io/SupMZ/https://cran.r-project.org/package=SupMZ.

A BibTeX entry for LaTeX users is

  @Manual{,
    title = {SupMZ: Detecting Structural Change with Heteroskedasticity},
    author = {{Muhammad Yaseen} and {Sami Ullah} and {Gulfam Haider}},
    year = {2020},
    note = {R package version 0.3.0},
    note = {https://myaseen208.github.io/SupMZ/ },
    note = {https://cran.r-project.org/package=SupMZ},
  }

This free and open-source software implements academic research by the
authors and co-workers. If you use it, please support the project by
citing the package.
```
