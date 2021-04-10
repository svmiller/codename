codename <- function(type = "any", seed) {

  if (missing(seed)) {

  } else {
    set.seed(seed)
  }

  if (type == "any") {
    my_adj <- sample(adjectives$value, 1)
    my_noun <- sample(animals$value, 1)

    the_codename <- paste(my_adj, my_noun)
    return(the_codename)
  }

}
