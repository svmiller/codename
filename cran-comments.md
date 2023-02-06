## Test environments

* Pop! OS 22.04, R 4.1.2

## R CMD check results

R CMD check done via `devtools::check()`, resulting in 0 errors, 0 warnings, and 0 notes. All tests passed.

`devtools::spell_check()` suggest spelling errors that are all false positives. Even the "incoming" check about "reproducibility" in the DESCRIPTION field should be interpreted as a false positive.

## Downstream dependencies

There are no downstream dependencies to note. There are no other packages required for installation. The data, however, are stored as "tibbles" and the {tibble} package is included in the "Suggests:" field.
