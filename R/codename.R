#' Generate a unique codename for yourself, your organization, other people, your projects, and whatever else
#'
#' @description \code{codename()} is a tool for generating codenames for various things.
#'
#' @return \code{codename()} takes a preferred type of code and an optional reproducible seed and returns
#' a codename for the user to consider for whatever it is they want.
#'
#' @author Steven V. Miller
#'
#' @param type a type of code the user wants. Defaults to "any", but "gods", "ubuntu", and "wu-tang" are available.
#' @param seed an optional reproducible seed, which can be specified as a character or number.
#'
#'
#' @examples
#'
#' codename()
#' codename(type = "ubuntu")
#' codename(type = "gods")
#' codename(type = "wu-tang")
#' codename(seed = 8675309)
#' codename(seed = 8675309)
#' codename(seed = "a character")
#' codename(seed = "a character")
#'

codename <- function(type = "any", seed) {

  if (missing(seed)) {

  } else {
    if (is.numeric(seed))
    {
      set.seed(seed)
    }
    charseed <- char2seed(seed)
    set.seed(charseed)
  }

  if (type == "any") {

    all_adjs <- rbind(adjectives, xkcd_colors, wu_adjs)
    my_adj <- sample(unique(all_adjs$value), 1)

    gods$type <- NULL
    all_nouns <- rbind(animals, gods, nouns, wu_nouns)
    my_noun <- sample(unique(all_nouns$value), 1)

    the_codename <- paste(my_adj, my_noun)
    return(the_codename)

  }

  if (type == "gods") {

    my_noun <- sample(gods$value, 1)

    all_adjs <- rbind(adjectives, xkcd_colors)
    my_adj <- sample(unique(all_adjs$value), 1)

    the_codename <- paste(my_adj, my_noun)
    return(the_codename)

  }


  if (type == "ubuntu") {

    my_noun <- sample(animals$value, 1)
    sw <- substring(my_noun, 1, 1)

    matchingsw <- subset(rbind(adjectives, xkcd_colors), substr(value, 1, 1) == sw)
    my_adj <- sample(matchingsw$value, 1)

    the_codename <- paste(my_adj, my_noun)
    return(the_codename)
  }

  if (type == "wu-tang") {

    my_adj <- sample(wu_adjs$value, 1)
    my_noun <- sample(wu_nouns$value, 1)

    the_codename <- paste(my_adj, my_noun)
    return(the_codename)

  }

}
