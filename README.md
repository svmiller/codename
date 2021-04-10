
# Codename Generation for Organizations, People, Projects, and Whatever Else

[![](https://www.r-pkg.org/badges/version/codename?color=green)](https://cran.r-project.org/package=codename)
[![](http://cranlogs.r-pkg.org/badges/grand-total/codename?color=green)](https://cran.r-project.org/package=codename)
[![](http://cranlogs.r-pkg.org/badges/last-month/codename?color=green)](https://cran.r-project.org/package=codename)
[![](http://cranlogs.r-pkg.org/badges/last-week/codename?color=green)](https://cran.r-project.org/package=codename)

``` r
library(codename)

codename()
#> [1] "incredible snake"
codename()
#> [1] "radiant beaver"
codename()
#> [1] "unlucky constrictor"
codename(seed = 8675309)
#> [1] "crushing eagle"
codename(seed = 8675309)
#> [1] "crushing eagle"

codename(type = "ubuntu")
#> [1] "sardonic shrew"
codename(type = "ubuntu")
#> [1] "unsightly urial"
codename(type = "ubuntu")
#> [1] "likely loon"
codename(type = "ubuntu", seed = 123456)
#> [1] "stimulating seahorse"
codename(type = "ubuntu", seed = 123456)
#> [1] "stimulating seahorse"
```
