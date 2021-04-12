
# Codename Generation for Organizations, People, Projects, and Whatever Else

[![](https://www.r-pkg.org/badges/version/codename?color=green)](https://cran.r-project.org/package=codename)
[![](http://cranlogs.r-pkg.org/badges/grand-total/codename?color=green)](https://cran.r-project.org/package=codename)
[![](http://cranlogs.r-pkg.org/badges/last-month/codename?color=green)](https://cran.r-project.org/package=codename)
[![](http://cranlogs.r-pkg.org/badges/last-week/codename?color=green)](https://cran.r-project.org/package=codename)

``` r
library(codename)

codename()
#> [1] "polished opossum"
codename()
#> [1] "stained possum"
codename()
#> [1] "shrill snipe"
codename(seed = 8675309)
#> [1] "shadowy landfowl"
codename(seed = 8675309)
#> [1] "shadowy landfowl"
codename(seed = "My Project Name: The Subtitle of It Too")
#> [1] "graceful dolphin"

codename(type = "ubuntu")
#> [1] "self-reliant snail"
codename(type = "ubuntu")
#> [1] "paltry pigeon"
codename(type = "ubuntu")
#> [1] "hefty hornet"
codename(type = "ubuntu", seed = 123456)
#> [1] "average anaconda"
codename(type = "ubuntu", seed = 123456)
#> [1] "average anaconda"
codename(type = "ubuntu", seed = "My Ubuntu Release")
#> [1] "spirited stork"

codename(type = "wu-tang")
#> [1] "E-ratic Artist"
codename(type = "wu-tang")
#> [1] "Profound Genius"
codename(type = "wu-tang", seed = "Steven V. Miller")
#> [1] "Foolish Bandit"
```
