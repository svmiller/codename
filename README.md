
# Generation of Code Names for Organizations, People, Projects, and Whatever Else

[![](https://www.r-pkg.org/badges/version/codename?color=green)](https://cran.r-project.org/package=codename)
[![](http://cranlogs.r-pkg.org/badges/grand-total/codename?color=green)](https://cran.r-project.org/package=codename)
[![](http://cranlogs.r-pkg.org/badges/last-month/codename?color=green)](https://cran.r-project.org/package=codename)
[![](http://cranlogs.r-pkg.org/badges/last-week/codename?color=green)](https://cran.r-project.org/package=codename)

`codename` allows for users to create short, pithy code names for their
organizations, their work projects, themselves, other people, or
whatever else. The core of this package is the eponymous `codename()`
function, which allows the user to create various types of code names.
The code names returned from this function, by in large, are a two-word
character vector of an attribute and an object. Right now, options
include “any” (which is default and incorporates a battery of adjectives
and nouns), “gods” (in which the object is the name of a deity or saint
from some religion), “ubuntu” (in which the code name is alliterative
but the object is always an animal), and “wu-tang” (in which the code
name is derived from the classic Wu-Tang Name Generator). `codename()`
also features the ability to use reproducible seeds, including character
seeds, for maximum transparency and reproducibility.

# Installation

You will ideally soon be able to install this on CRAN, as follows:

``` r
install.packages("codename")
```

Until then, you can install the development version of this package
through the `devtools` package.

``` r
devtools::install_github("svmiller/codename")
```

# Usage

There isn’t much to belabor here and usage should be self-explanatory.
Here is some sample output.

``` r
library(codename)

# defaults to any
codename()
#> [1] "brownish pink hash"
codename()
#> [1] "electric lime agenda"
codename()
#> [1] "dark khaki churn"
codename(seed = 8675309)
#> [1] "content wilderness"
codename(seed = "My Project Name: The Subtitle of It Too")
#> [1] "grateful accusation"

codename(type = "gods")
#> [1] "mature yemaya"
codename(type = "gods")
#> [1] "needy chantico"
codename(type = "gods")
#> [1] "pastel wakan tanka"
codename(type = "gods", seed = 8675309)
#> [1] "creamy sterculius"



codename(type = "ubuntu")
#> [1] "grey gibbon"
codename(type = "ubuntu")
#> [1] "strawberry swan"
codename(type = "ubuntu")
#> [1] "spry swan"
codename(type = "ubuntu", seed = 8675309)
#> [1] "leaf landfowl"
codename(type = "ubuntu", seed = 8675309)
#> [1] "leaf landfowl"
codename(type = "ubuntu", seed = "My Ubuntu Release")
#> [1] "lovely lungfish"

codename(type = "wu-tang")
#> [1] "Insane Beggar"
codename(type = "wu-tang")
#> [1] "E-ratic Artist"
codename(type = "wu-tang", seed = "Steven V. Miller")
#> [1] "Foolish Bandit"

all_types <- c("any", "gods", "ubuntu", "wu-tang")

for (i in all_types) {
  output <- codename(type = i, seed  = "A Reproducible Character Seed")
  print(output)
}
#> [1] "tealish green protocol"
#> [1] "superb lumaluma"
#> [1] "glum gazelle"
#> [1] "E-ratic Leader"
```
