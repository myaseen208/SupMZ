
## `binGroup2`: Identification and Estimation using Group Testing

###### Version : [1.2.4](https://myaseen208.github.io/binGroup2/); Copyright (C) 2019-2022: [UNL](https://statistics.unl.edu/); License: [GPL-2\|GPL-3](https://www.r-project.org/Licenses/)

##### *Brianna Hitt<sup>1</sup>, Christopher Bilder<sup>2</sup>, Frank Schaarschmidt<sup>3</sup>, Brad Biggerstaff, Christopher McMahan, Joshua Tebbs, Boan Zhang, Michael Black, Peijie Hou, and Peng Chen*

1.  United States Air Force Academy: Colorado Springs, Colorado, USA
2.  Department of Statistics, University of Nebraska, Lincoln-NE, USA
3.  Leibniz University Hannover: Hanover, Niedersachsen, DE

------------------------------------------------------------------------

[![minimal R
version](https://img.shields.io/badge/R%3E%3D-3.5.0-6666ff.svg)](https://cran.r-project.org/)
[![License: GPL
v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version-last-release/binGroup2)](https://cran.r-project.org/package=binGroup2)
[![rstudio mirror
downloads](https://cranlogs.r-pkg.org/badges/grand-total/binGroup2?color=green)](https://CRAN.R-project.org/package=binGroup2)
<!-- [![packageversion](https://img.shields.io/badge/Package%20version-0.2.3.3-orange.svg)](https://github.com/myaseen208/binGroup2) -->

<!-- [![GitHub Download Count](https://github-basic-badges.herokuapp.com/downloads/myaseen208/binGroup2/total.svg)] -->

[![Project Status:
WIP](http://www.repostatus.org/badges/latest/inactive.svg)](http://www.repostatus.org/#inactive)
[![lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)
[![Last-changedate](https://img.shields.io/badge/last%20change-2022--05--17-yellowgreen.svg)](https://github.com/myaseen208/binGroup2)
[![Rdoc](http://www.rdocumentation.org/badges/version/binGroup2)](http://www.rdocumentation.org/packages/binGroup2)
[![Analytics](https://pro-pulsar-193905.appspot.com/UA-116716530-1/welcome-page)](https://github.com/myaseen208/google-analytics-beacon)

------------------------------------------------------------------------

## Description

Methods for the group testing identification problem: 1) Operating
characteristics (e.g., expected number of tests) for commonly used
hierarchical and array-based algorithms, and 2) Optimal testing
configurations for these same algorithms. Methods for the group testing
estimation problem: 1) Estimation and inference procedures for an
overall prevalence, and 2) Regression modeling for commonly used
hierarchical and array-based algorithms.

## Installation

The package can be installed from CRAN as follows:

``` r
install.packages("binGroup2", dependencies = TRUE)
```

The development version can be installed from github as follows:

``` r
if (!require("remotes")) install.packages("remotes")
remotes::install_github("myaseen208/binGroup2")
```

## What’s new

To know whats new in this version type:

``` r
news(package = "binGroup2")
```

## Links

[CRAN page](https://cran.r-project.org/package=binGroup2)

[Github page](https://github.com/myaseen208/binGroup2)

[Documentation website](https://myaseen208.github.io/binGroup2/)

## Citing `binGroup2`

To cite the methods in the package use:

``` r
citation("binGroup2")
```


    To cite package 'binGroup2' in publications use:

      Hitt B, Bilder C, Schaarschmidt F, Biggerstaff B, McMahan C, Tebbs J
      (2022). _binGroup2: Identification and Estimation using Group
      Testing_. R package version 1.2.4,
      <https://CRAN.R-project.org/package=binGroup2>.

    A BibTeX entry for LaTeX users is

      @Manual{,
        title = {binGroup2: Identification and Estimation using Group Testing},
        author = {Brianna Hitt and Christopher Bilder and Frank Schaarschmidt and Brad Biggerstaff and Christopher McMahan and Joshua Tebbs},
        year = {2022},
        note = {R package version 1.2.4},
        url = {https://CRAN.R-project.org/package=binGroup2},
      }
