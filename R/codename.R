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
    my_adj <- sample(adjectives$value, 1)
    my_noun <- sample(animals$value, 1)

    the_codename <- paste(my_adj, my_noun)
    return(the_codename)
  }

  if (type == "ubuntu") {
    my_adj <- sample(adjectives$value, 1)
    sw <- substring(my_adj, 1, 1)

    matchingsw <- subset(animals, substr(value, 1, 1) == sw)
    my_noun <- sample(matchingsw$value, 1)

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
