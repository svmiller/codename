#' Generate a unique codename for yourself, your organization, other people, your projects, and whatever else
#'
#' @description \code{codename()} is a tool for generating codenames for various things.
#'
#' @return \code{codename()} takes a preferred type of code and an optional reproducible seed and returns
#' a codename for the user to consider for whatever it is they want.
#'
#' @details
#'
#' When type is 'any' (the default), the function combines all adjective data
#' frames together (i.e. those from the Wu-Tang set, the colors, and the generic
#' adjectives) and combines all noun data frames together (i.e. the animals, the
#' generic nouns, the gods, and the Wu-Tang nouns). It then samples from each and
#' combines them together.
#'
#' When type is 'gods', the function randomly samples a god from the \code{gods}
#' data frame and pastes it to a random color or generic adjective.
#'
#' When type is 'ubuntu', a codename is derived that is broadly consistent with
#' how Ubuntu versions their releases. This particular way of doing it starts with
#' sampling an animal from the \code{animals} data frame. After an animal is
#' selected, the function finds the first letter of the animal and matches it
#' with something from the \code{adjectives} or \code{xkcd_colors} data sets.
#' However, anything on the adjective side of the equation must be of length one.
#' In other words, you can get "yellow yak" but you cannot have "yellow orange
#' yak" because the "yellow orange" color is a two-word modifier.
#'
#' When type is 'wu-tang', a name is derived by randomly sampling from the
#' \code{wu_adjs} and \code{wu_nouns} data frames.
#'
#' When type is 'nicka', the function randomly samples a U.S. agency from the
#' \code{nicka_blocks} data frame. This agency has a series of two-character blocks
#' from which they can draw a noun and an adjective. Thereafter, the function
#' randomly selects something from a compilation of the adjectives and the nouns
#' that start with something from the two-character block that was selected,
#' though the sampling procedure omits any adjective or noun that is more than
#' one word. You can cross-reference your code name to the \code{nicka_blocks}
#' data frame to see what agency you're representing for something that I'm sure
#' is nefarious and may require a congressional hearing.
#'
#' @author Steven V. Miller
#'
#' @param type a type of code the user wants. Defaults to "any", but "gods", "nicka", "ubuntu", and "wu-tang" are available.
#' @param seed an optional reproducible seed, which can be specified as a character or number.
#'
#'
#' @examples
#'
#' codename()
#' codename(type = "ubuntu")
#' codename(type = "gods")
#' codename(type = "wu-tang")
#' codename(type = "nicka")
#' codename(type = "ubuntu", seed = "A Character Seed")
#' codename(type = "gods", seed = "A Character Seed")
#' codename(type = "wu-tang", seed = "A Character Seed")
#' codename(type = "nicka", seed = "A Character Seed")
#'

codename <- function(type = "any", seed) {

  if (missing(seed)) {

    set.seed(NULL)

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
    all_adjs$value <- tolower(all_adjs$value)
    my_adj <- sample(unique(all_adjs$value), 1)

    gods$type <- NULL
    all_nouns <- rbind(animals, gods, nouns, wu_nouns)
    all_nouns$value <- tolower(all_nouns$value)
    my_noun <- sample(unique(all_nouns$value), 1)

    the_codename <- paste(my_adj, my_noun)



  }

  if (type == "gods") {

    my_noun <- sample(gods$value, 1)

    all_adjs <- rbind(adjectives, xkcd_colors)
    my_adj <- sample(unique(all_adjs$value), 1)

    the_codename <- paste(my_adj, my_noun)



  }


  if (type == "ubuntu") {

    my_noun <- sample(animals$value, 1)
    sw <- substring(my_noun, 1, 1)

    all_adjs <- rbind(adjectives, xkcd_colors)
    all_adjs <- subset(all_adjs, sapply(strsplit(all_adjs$value, " "), length) == 1)

    matchingsw <- subset(all_adjs, tolower(substr(value, 1, 1)) == sw)
    my_adj <- sample(matchingsw$value, 1)

    the_codename <- paste(my_adj, my_noun)

  }

  if (type == "wu-tang") {

    my_adj <- sample(wu_adjs$value, 1)
    my_noun <- sample(wu_nouns$value, 1)

    the_codename <- paste(my_adj, my_noun)
  }

  if (type == "nicka") {

    all_adjs <- rbind(adjectives, xkcd_colors, wu_adjs)
    all_adjs$value <- tolower(all_adjs$value)
    all_adjs <- subset(all_adjs, sapply(strsplit(all_adjs$value, " "), length) == 1)

    # x <- sample(unique(nicka_blocks$assigned_to), 1)
    a <- subset(nicka_blocks, assigned_to == sample(unique(nicka_blocks$assigned_to), 1))

    my_adj <- subset(all_adjs, grepl(paste0("^", unique(a$letlet), collapse="|^"), value, ignore.case=TRUE))
    my_adj <- sample(my_adj$value, 1)

    gods$type <- NULL
    all_nouns <- rbind(animals, gods, nouns, wu_nouns)
    all_nouns <- subset(all_nouns, sapply(strsplit(all_nouns$value, " "), length) == 1)
    all_nouns$value <- tolower(all_nouns$value)

    my_noun <- subset(all_nouns, grepl(paste0("^", unique(a$letlet), collapse="|^"), value, ignore.case=TRUE))
    my_noun <- sample(my_noun$value, 1)


    the_codename <- paste(my_adj, my_noun)

  }

  return(the_codename)
}
