#' Convert a character vector to a numeric integer for setting a reproducible seed
#'
#' @description \code{char2seed()} is a parlor trick for converting a character vector into an integer for the sake of setting a reproducible seed.
#'
#' @details Interested users can see how this works. Namely, letters (and numbers) in the character vector are assigned corresponding numbers. These
#' numbers are added together and then exponentiated to create a really big number. The number is divided over 1 minus the absolute maximum number
#' that R can handle by default (2^32). The remainder of this division is what ultimately becomes the reproducible seed. The nature of this parlor trick means
#' there's a possibility, however infinitesimally small, that two different character vectors can return the same reproducible seed. The function may warn
#' of "loss of accuracy", but this just means you supplied it a really long character vector.
#'
#' @return \code{char2seed()} takes a character vector and returns a reproducible seed for you to use for whatever purpose. It's used internally in
#' \code{codename()}.
#'
#' @author Steven V. Miller
#'
#' @param x a character vector
#'
#' @examples
#'
#' char2seed("ABCDEF")
#' char2seed("Go Bucks!")
#' char2seed("My Project Title")
#'


char2seed <- function(x) {

  tmp <- c(0:25, 0:25, 0:9)
  names(tmp) <- c(LETTERS, letters, 0:9)

  x <- gsub("[^0-9a-zA-Z]","",as.character(x))

  xsplit <- tmp[ strsplit(x,'')[[1]] ]

  seed <- sum(exp((seq(along=xsplit)) ))
  seed <- as.integer( seed %% (2^31-1) )
  return(seed)
}
