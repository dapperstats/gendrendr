#' @title Replace a value with an alternative if it is NULL
#'
#' @description Replaces the focal input with the alternative value if it
#'   is \code{NULL}. 
#'
#' @param x Focal input.
#'
#' @param alt Alternative value.
#'
#' @return \code{x} if not \code{NULL}, \code{alt} otherwise. 
#' 
#' @examples
#'  ifnull(NULL, 123)
#'  ifnull(TRUE, 123)
#'  ifnull(FALSE, 123)
#'
#' @export 
#'
ifnull <- function(x = NULL, alt = NULL){
  if(is.null(x)){
    x <- alt
  }
  x
}

#' @title Verify that a value input is of appropriate type
#'
#' @description Throws an error if \code{x} isn't proper, based on the 
#'  \code{type}. 
#'
#' @param x Focal input.
#'
#' @param type Type of input that \code{x} should be. Presently available 
#'  are \code{"character"} (standard) and \code{"integer"} (conformable to
#'  an integer if not explicitly classed as such)/
#'
#' @return \code{NULL} if \code{x} is proper, throwing an error otherwise.
#' 
#' @examples
#'  names <- "sam"
#'  check_type(x = names, type = "character")
#'  names <- 2019
#'  #check_type(x = names, type = "character") # throws error
#'  years <- 2019
#'  check_type(x = years, type = "integer")
#'  years <- "sam"
#'  #check_type(x = years, type = "integer") # throws error
#'
#' @export 
#'
check_type <- function(x, type){
  xname <- as.character((match.call())[["x"]])
  testexpr <- switch(type,
                     "character" = !is.character(x),
                     "integer" = !is.numeric(x) || any(x %% 1 != 0))
  msg <- switch(type, 
                "character" = paste0("'`", xname, "` must be characters'"),
                "integer" = paste0("'`", xname, "` must be integers'"))
  if(testexpr){
    stop(msg, call. = FALSE)
  }
  invisible(NULL)
}

#' @title Get the language and location of a system locale
#'
#' @description OS-flexible approach to determining the system locale with
#'   respect to language and location.
#'
#' @param category \code{character} string of the locale environmental variable
#'   to use, passed directly to \code{\link[base]{Sys.getlocale}}.
#'
#' @param localeAsis \code{boolean} for returning \emph{language} and
#'   \emph{location} from \link[base]{Sys.getlocale} as it is. Conversions are
#'   done via \link[translateR]{getGoogleLanguages} and
#'   \link[countrycode]{countrycode}
#'
#' @return \code{character} vector with elements \code{"language"} and
#'   \code{"location"}.
#'
#' @importFrom countrycode countrycode
#'
#' @examples
#'  get_locale()
#'
#' @export
#' 
get_locale <- function(category = "LC_TIME", localeAsis = FALSE){
  ismac <- Sys.info()["sysname"] == "Darwin"
  issolaris <- Sys.info()["sysname"] == "SunOS"
  splitchar <- ifelse(ismac | issolaris, "/", ";")
  locale <- Sys.getlocale(category)
  locale <- strsplit(locale, splitchar)[[1]]
  locale <- sub(".*=", "", locale)
  locale <- strsplit(locale, "_")[[1]]
  locale <- setNames(locale, c("language", "location"))
  locale[["location"]] <- sub("\\..*", "", locale[["location"]])
  
  
  if(!localeAsis && splitchar == "/") {
    locale["language"] <- names(which(language_codes == locale["language"]))
    locale["location"] <- countrycode::countrycode(locale["location"], "eurostat", "un.name.en")
    return(locale)
  } else return(locale)
}

#' @title Print Google Language Codes
#' 
#' @seealso \link[translateR]{getGoogleLanguages}
#' 
#' @name language_codes 
#' 
language_codes <- unlist(translateR:::languageCodes()[["Google"]])
