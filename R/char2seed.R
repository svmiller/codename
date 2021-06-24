#' Convert a character vector to a numeric integer for setting a reproducible seed
#'
#' @description \code{char2seed()} is a parlor trick for converting a character vector into an integer for the sake of setting a reproducible seed.
#'
#' @details Interested users can see how this works. Namely, letters (and numbers) in the character vector are assigned corresponding numbers. In
#' \code{char2seed()}, these numbers are concatenated together an divided over 1 minus the absolute maximum number that R can handle by
#' default (2^32). The remainder of this division is what ultimately becomes the reproducible seed.
#'
#' In \code{char2seed_v1()}, these numbers are added together and then exponentiated to create a really big number. The number is divided over
#' 1 minus the absolute maximum number that R can handle by default (2^32). The remainder of this division is what ultimately becomes the
#' reproducible seed.
#'
#' The nature of this parlor trick means there's a possibility, however small, that two different character vectors
#' can return the same reproducible seed. This happened before \url{https://github.com/svmiller/codename/issues/1}, which is why
#' I changed the function for generating the seed and moved the old function to \code{char2seed_v1()}.
#'
#' The function may warn of "loss of accuracy", but this just means you supplied it a really long character vector.
#'
#' @return \code{char2seed()} takes a character vector and returns a reproducible seed for you to use for whatever purpose. It's used internally in
#' \code{codename()}. \code{char2seed_v1()} does the same, but using the older method from v. 0.1.0 and v. 0.2.0 of this release.
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
  tmp <- c(1:26, 1:26, 0:9) # notice the change from 0:25 to 1:26. This is going somewhere.
  names(tmp) <- c(LETTERS, letters, 0:9)

  x <- gsub("[^0-9a-zA-Z]","",as.character(x))
  xsplit <- tmp[ strsplit(x,'')[[1]] ]
  xsplit

  the_seed <- as.numeric(paste(xsplit, collapse="")) # We're just going to paste the split into a seed
  the_seed # look at it

  seed <- as.integer( the_seed %% (2^31-1) ) # same division as before
  return(seed)

}

#' @rdname char2seed
#' @export

char2seed_v1 <- function(x) {

  tmp <- c(0:25, 0:25, 0:9)
  names(tmp) <- c(LETTERS, letters, 0:9)

  x <- gsub("[^0-9a-zA-Z]","",as.character(x))

  xsplit <- tmp[ strsplit(x,'')[[1]] ]

  seed <- sum(exp((seq(along=xsplit)) ))
  seed <- as.integer( seed %% (2^31-1) )
  return(seed)
}
