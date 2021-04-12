# CRAN Note avoidance. I hate this check.
# Inspiration: https://github.com/HughParsonage/grattan/blob/master/R/zzz.R
# Also:
if(getRversion() >= "2.15.1")
  utils::globalVariables(
    # underlying data used for behind-the-scenes handsomeness
    c("adjectives", "xkcd_colors", "wu_adjs", "animals",
      "nouns", "wu_nouns", "value")
  )
