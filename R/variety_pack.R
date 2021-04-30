#' Get a variety pack of unique code names for yourself, your organization, other people, your projects, and whatever else
#'
#' @description \code{variety_pack()} is produces all types of code names available in \pkg{codename}.
#'
#' @return \code{variety_pack()} takes an optional reproducible seed and produces all kinds of code names available in
#' \pkg{codename}.
#'
#' @author Steven V. Miller
#'
#' @param seed an optional reproducible seed, which can be specified as a character or number.
#'
#'
#' @examples
#'
#' variety_pack()
#' variety_pack(seed = 8675309)
#'

variety_pack <- function(seed) {

  all_types <- c("any", "gods", "ubuntu", "wu-tang")

  for (i in all_types) {

    output <- codename(type = i, seed = seed)
    print(output)
  }

}
