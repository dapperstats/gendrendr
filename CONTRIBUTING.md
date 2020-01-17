# Guidelines for Contributing

Thanks for checking out our project! If you haven't already, please check out the [readme](README.md) for general info about this project.

## Contributor Code of Conduct
All contributors will be expected to follow our [code of conduct](CODE_OF_CONDUCT.md).

## For the General Public
If you're not a member of DAPPER Stats, we ask that you use one of the following two methods for contributing:

1. Create an issue -- if you spot any typos, bugs, or have general suggestions, etc. You can also use this to participate in ongoing discussions. For more info, please check out this Github [guide](https://guides.github.com/features/issues/).

2. Fork and create a pull request -- if you have suggested bugfixes or changes. For more info, please check out this Github [guide](https://help.github.com/articles/about-pull-requests/). We ask that you follow our guidelines below on documentation and testing.

## DAPPER Stats and Collaborators

If you're actively working on this repo, then you should have write access to create branches for any new features or bugfixes. Please see the lab-wiki for info on using branches in a shared repository. 

If you don't have write access and you would like to, please contact @juniperlsimonis for access.

## Documentation

If you are contributing code to this project, you generally don't need any additional packages, since the documentation will be written as comments in the R scripts. If you are also building the package, see the [section below](#building) for more details.

In most cases, you'll be creating a new function and then documenting it. You can check the existing functions for examples, but here's a basic template:
```
#' @title {this is the heading for the help file}
#'
#' @description {A description of the function}
#'
#' @param {name of a function argument} {what the argument does}
#'
#' @return {what is returned from the function}
#'
#' @examples
#' {R code that is an example use of the function}
#'
#' @export
#'
newfunc <- function() ...
```

Note that you can also include links to other functions, math formatting, and more. For more details, see the [chapter on documentation ](http://r-pkgs.had.co.nz/man.html) in Hadley Wickham's book for R packages.

## Testing

If you are adding new functionality, please include automated tests to verify that some of the basic functionality is correct.

Automated testing uses R scripts, that live in the `tests/testthat/` subfolder for the package. If you are adding a new file, please name it as `test-{concept}.R`. 

As a general rule, you don't need to test all possible inputs and outputs for a function, but you should test some important aspects:
* outputs are the correct format (including dimensions and components)
* sample input produces the correct sample output

You can see the existing tests as examples of how to organize your tests, but note that there are several different kinds of `expect_` functions that test for different things. For more details, see the [chapter on testing ](http://r-pkgs.had.co.nz/tests.html) in Hadley Wickham's book for R packages.

## Building

To fully build the package, including documentation, running-tests, you will need the `roxygen2`, the `testthat`, and the `devtools` package.

Specific operations are then done by calling the appropriate functions from within R, while your working directory is somewhere in the package folder.

The suggested workflow is:
1. Write code, documentation, and tests.
2. Run `devtools::document()` to generate the documentation files and update the `NAMESPACE` file.
3. Run `devtools::install()` to install the new version of the package.
4. Run `devtools::test()` to run the test scripts on the new version of the package.

If you are also prepping the package as a whole, then you will also want to run `devtools::check()` and/or `devtools::check_cran()` to make sure that the package is complete.
Note that you need an up-to-date TeX/LaTeX distribution for running `devtools::check()` and/or `devtools::check_cran()` due to the rendering of the package manual.

For more info, see the [GitHub repo](https://github.com/hadley/devtools) for the `devtools` package. 

## Attribution 

This document is based on the [CONTRIBUTING 
file](https://github.com/weecology/portalr/blob/master/CONTRIBUTING.md)
associated with the Beta release of the 
[**portalr**](https://github.com/weecology/portalr/) package
and is used under the MIT License.
