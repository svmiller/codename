#' A Data Frame of Adjectives
#'
#' This is a data frame of adjectives in the English language to use as an attribute in generating a code name.
#'
#' @format a data frame with 1,347 observations and 1 column.
#' \describe{
#' \item{\code{value}}{a character vector}
#' }
#'
#' @details Adjectives found on Github as a gist from username "@hugsy".

"adjectives"

#' A Data Frame of Animals
#'
#' This is a data frame of animals in the English language to use as an object in generating a code name.
#'
#' @format a data frame with 400 observations and 1 column.
#' \describe{
#' \item{\code{value}}{a character vector}
#' }
#'
#' @details Animals found on Github as a gist from username "@atduskgreg".

"animals"

#' A Data Frame of Colors
#'
#' This is a data frame of colors in the English language to use as an attribute in generating a code name.
#'
#' @format a data frame with 949 observations and 1 column.
#' \describe{
#' \item{\code{value}}{a character vector}
#' }
#'
#' @details Colors found by way of the web comic \emph{XKCD}.

"xkcd_colors"


#' A Data Frame of Gods
#'
#' This is a data frame of gods in the English language to use as an object in generating a code name.
#'
#' @format a data frame with 221 observations and 1 column.
#' \describe{
#' \item{\code{value}}{a character vector}
#' }
#'
#' @details Gods data cobbled from the website "Godchecker" after searching for the top 10 most popular deities by various regions/religions on their website.

"gods"

#' A Data Frame of Nouns
#'
#' This is a data frame of nouns in the English language to use as an object in generating a code name.
#'
#' @format a data frame with 6801 observations and 1 column.
#' \describe{
#' \item{\code{value}}{a character vector}
#' }
#'
#' @details Nouns data come by way of "The Great Nouns List"

"nouns"

#' A Data Frame of Adjectives from the "Wu-Tang Name Generator"
#'
#' This is a data frame of adjectives from the "Wu-Tang Name Generator" to use as an attribute in generating a code name.
#'
#' @format a data frame with 45 observations and 1 column.
#' \describe{
#' \item{\code{value}}{a character vector}
#' }
#'
#' @details These data are classic and apparently come from around 2002.

"wu_adjs"


#' A Data Frame of Nouns from the "Wu-Tang Name Generator"
#'
#' This is a data frame of nouns from the "Wu-Tang Name Generator" to use as an object in generating a code name.
#'
#' @format a data frame with 40 observations and 1 column.
#' \describe{
#' \item{\code{value}}{a character vector}
#' }
#'
#' @details These data are classic and apparently come from around 2002.

"wu_nouns"

#' A Data Frame of NICKA Blocks
#'
#' This is a data frame of the NICKA blocks used by the U.S. government for devising code names for operations.
#'
#' @format a data frame with 626 observations and 4 column.
#' \describe{
#' \item{\code{block}}{a numeric block identifier}
#' \item{\code{first_last}}{a character vector for the range of first and last characters assigned to the particular U.S. agency}
#' \item{\code{letlet}}{a character vector, derived from the \code{first_last} column}
#' \item{\code{assigned_to}}{a character vector for the U.S. agency that had the block in question}
#' }
#'
#' @details Data are taken from here: \url{http://www.designation-systems.net/usmilav/codenames.html}

"nicka_blocks"
