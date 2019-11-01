<img src="man/figures/gendrendr.png" width="200px" align="right">

# gendrendr 0.1.0

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/dapperstats/gendrendr/master/LICENSE)
[![Build Status](https://api.travis-ci.org/dapperstats/gendrendr.svg?branch=master)](https://travis-ci.org/dapperstats/gendrendr)
[![Lifecycle:maturing](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Codecov test coverage](https://img.shields.io/codecov/c/github/dapperstats/gendrendr/master.svg)](https://codecov.io/github/dapperstats/gendrendr/branch/master)

`gendrendr` contains a simple set of functions designed to highlight the inaccuracy and violence of assigning genders to others.


The premise is as follows: 
1. the assignment of gender to another in the absence of personal confirmation is an act of violence that perpetuates hierarchical systems of oppression and can be personally traumatizing; 
2. the assumption of the correctness of gender assigned at birth reinforces archaic medical views and state-sanctioned violence; 
3. gender is a construct that varies over space, time, culture, and ethnicity, and assuming that data from one context apply to another reinforces gendered imperialist violence and perpetuates cultural stereotypes; 
4. of specific relevance is the fact that gender is not a binary, and use of data that assume a gender binary reinforces that norm, which does violence to individuals who are non-binary and erases culutres that embrace a diversity of genders; 
5. gender cannot be accurately inferred from names, presentations, pronouns or other such factors, and assuming it can and that the consequences of any failure are trivial speaks to the devaluation of transgender, non-binary, and gender-non-conforming life...and this is not absolved by using large data sets and fancy statistics; and 
6. if it is important for some reason to know what someone's gender is, the only way to accurately, respectfully, and definitively obtain that information is from that person.

## Status: Experimental, Active Development

The `gendrendr` package is currently being actively developed, and is an early stage of package construction.

## Installation

You can install the R package from github:

```r
install.packages("devtools")
devtools::install_github("dapperstats/gendrendr")
```

## Basic use

The main function `gendr` is used to highlight the issues associated with assigning gender to an individual. It can take multiple names, locations, languages, years, and methods:

```r
gendrendr::gendr(names = c("Sam", "Morgan", "Juniper"), years = 1920, locations = "United States", language = "English", method = "standard")
```

## Author Contributions

**J. L. Simonis** is presently the sole author of `gendrendr`. 

If you are interested in contibuting, see the [Contributor Guidelines](https://github.com/dapperstats/gendrendr/blob/master/CONTRIBUTING.md) and [Code of Conduct](https://github.com/dapperstats/gendrendr/blob/master/CODE_OF_CONDUCT.md).