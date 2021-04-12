## Test environments

* ubuntu 18.04, R 4.0.3

## R CMD check results and Feedback From/Responses to CRAN

R CMD check done via `devtools::check()`, resulting in 0 errors, 0 warnings, and 0 notes. All tests passed.

`devtools::spell_check()` will suggest a few spelling errors. These are false positives given the context in which they appear. Importantly, I argue "codename" should not be understood as a misspelled word though the point is taken that there is a reason this was flagged as possibly misspelled.

## Downstream dependencies

There are no downstream dependencies to note. There are no other packages required for installation. The data, however, are stored as "tibbles" and the {tibble} package is included in the "Suggests:" field.
