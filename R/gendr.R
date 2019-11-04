#' @title Do not assign gender to someone
#'
#' @description Recognizing that gender is an individual, person 
#'  characteristic, it is impossible to accurately assign gender to another. 
#'  Further, assigning genders to those who have been incorrectly assigned 
#'  genders is a retraumatizing, violent act. Finally, gender is a 
#'  spatiotemporally evolving concept, and therefore by definition, the 
#'  gender of an individual in a given space and time may not be accurately
#'  predicted by the genders of other individuals in other spaces and/or 
#'  times. A particularly prescient example of this is the recent-historic 
#'  Euro-centric notion of a gender binary, which is a false construct that 
#'  has been nonetheless used to define genders on a massive scale. \cr \cr
#'  \code{gendr} acknowledges these shortcomings when asked to assign the 
#'  gender of an individual. \cr \cr
#'  \code{gendr_warning} produces a warning if necessary (it's necessary).
#'
#' @param names \code{character} vector of first names. All options available.
#'
#' @param locations \code{character} vector of locations. All options 
#'   available.
#'
#' @param languages \code{character} vector of languages. All options
#'   available.
#'
#' @param years \code{integer}-conformable vector of years. All options 
#'   available.
#'
#' @param methods \code{character} vector of methods. All options available.
#'
#' @return 
#'  \code{gendr}: \code{data.frame} of genders for inputs. \cr
#'  \code{gendr_warning}: \code{NULL}, warning is produced.
#'
#' @examples
#'  \donttest{
#'  gendr("max", "usa", "english", 1990) # produces warning
#'  gendr() # produces warning 
#'  gendr_warning() # produces warning
#'  }
#'
#' @export
#'
gendr <- function(names = NULL, locations = NULL, languages = NULL, 
                  years = NULL, methods = "standard"){
  
  locale <- get_locale()
  names <- ifnull(names, Sys.info()[["user"]])
  languages <- ifnull(languages, locale["language"])
  locations <- ifnull(locations, locale["location"])
  years <- ifnull(years, as.numeric(format(Sys.time(), "%Y")))
  
  check_type(names, "character")
  check_type(languages, "character")
  check_type(locations, "character")
  check_type(methods, "character")
  check_type(years, "integer")

  gendr_warning()
  expand.grid(name = names, location = locations, language = languages, 
              method = methods, year = years, gender = "?")
}

#' @rdname gendr
#'
#' @export
#'
gendr_warning <- function(){
  msgs <- c("assigning a gender to someone else is an act of violence",
            "gender is not a binary",
            "if it is important to know someone's gender, ask them",
            "assigning genders is inherently inaccurate",
            "gender is an evolving and variable human construct",
     "consider the impact on individuals for whom your assumptions are wrong")
  warning(sample(msgs, 1), call. = FALSE, immediate. = TRUE)
}

