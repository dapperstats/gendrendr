# gendrendr (development version)

Version numbers follow [Semantic Versioning](https://semver.org/).

# gendrendr 0.1.5
*Active development*

### Minor editing to pkgdown site

### Patch to handle empty inputs on Mac OS & Solaris
* The LC environmental variables are concatenated using different characters.

### Intro of utilities functions
* `ifnull` to do the replacement if a value is null.
* `check_type` to do simple error checking based on type (a generalization of the R classes of objects).
* `get_locale` as way to do OS-agnostic language and location of a system locale.

# [gendrendr 0.1.4](https://github.com/dapperstats/gendrendr/releases/tag/v0.1.4)
*2019-11-02*

### Updated versioning in `DESCRIPTION`
* Was incorrectly still `0.1.1` in `0.1.2` and `0.1.3`.

### Minor editing to pkgdown site

# [gendrendr 0.1.3](https://github.com/dapperstats/gendrendr/releases/tag/v0.1.3)
*2019-11-02*

### Addition of the premise regarding the sex-gender distinction
* Premise 7 (gender and sex are both imperfect constructs and drawing distinctions between them creates unnecessary hierarchies--sex is as problematic (if not moreso) a concept than gender and holding it in any higher regard elevates out-dated medicalized views and perpetuates systematic oppressions) was added to make clear that all of the content which refers to "gender" could functionally be applied to "sex" and that using one or the other is fine, but for consistency here we're using gender. 

# [gendrendr 0.1.2](https://github.com/dapperstats/gendrendr/releases/tag/v0.1.2)
*2019-11-02*

### Added `codecov.yml` to manage code coverage

### Bug fixed in example for `gendr`
* Addresses [Issue 3](https://github.com/dapperstats/gendrendr/issues/3)

### Added `cran-comments.md` file
* Added to `.Rbuildignore`

# [gendrendr 0.1.1](https://github.com/dapperstats/gendrendr/releases/tag/v0.1.1)
*2019-11-01*

### Documentation editing
* Minor changes to enhance linkages, etc.

# [gendrendr 0.1.0](https://github.com/dapperstats/gendrendr/releases/tag/v0.1.0)
*2019-11-01*

### Instantiation
* Basic structure of the package and the focal function `gendr`.
* Hookups with Zenodo, Travis, Codecov
