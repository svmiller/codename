char2seed <- function(x) {

  tmp <- c(0:25, 0:25, 0:9)
  names(tmp) <- c(LETTERS, letters, 0:9)

  x <- gsub("[^0-9a-zA-Z]","",as.character(x))

  xsplit <- tmp[ strsplit(x,'')[[1]] ]

  seed <- sum(exp((seq(along=xsplit)) ))
  seed <- as.integer( seed %% (2^31-1) )
  return(seed)
}

# x <- "my really awesome paper title is awesome and totally a paper: it also has a subtitle and you should check it out"
# tmp <- c(0:25, 0:25, 0:9)
# names(tmp) <- c(LETTERS, letters, 0:9)
#
# x <- gsub("[^0-9a-zA-Z]","",as.character(x))
#
# xsplit <- tmp[ strsplit(x,'')[[1]] ]
#
# seed <- sum(exp((seq(along=xsplit)) ))
# seed <- as.integer( seed %% (2^31-1) )
# return(seed)
