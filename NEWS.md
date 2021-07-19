codename 0.4.0
---------------------------------------------------------------------

- Ensure adjectives starting with capital letters can be matched to no animal names. Thank you @lemna for pointing this out and fixing it.
- Add some adjectives and animals starting with `x` (HT: @lemna).


codename 0.3.0
---------------------------------------------------------------------

Change `char2seed()` function and move old version of it to `char2seed_v1()`. This does not affect `codename()`, beyond the seed supplied for output.

codename 0.2.0
---------------------------------------------------------------------

- Add `codename_message()` to display package version in console. This may matter for future updates that alter the underlying data, which can change the output from a reproducible seed.
- Add `variety_pack()` function for sampling the wares, with (optional) reproducible seed.
- Remove "list" from `animals`. This was a function of copy-pasting a list I found somewhere, which itself was just copy-pasted or scraped without a lot of inspection to the output.
- Fix "chantio" to "chantico" in `gods`. My bad.
- Scrub documentation instances of "codename" to "code name." The former works well for the function and package name, but "code name" is proper English. I don't think anyone will notice or care.
- Force "any" options to be lowercase. Basically, the inclusion of the Wu-Tang names results in the mismatch. `{codename}` will permit title case only for the Wu-Tang name generator component of this package.
- Add `set.seed(NULL)` at the top line of `codename()`. Basically, R's `set.seed()` is designed to be at the top-level of the script. It means if you run a seed once, the path is pre-determined afterward and the code name generation follows the same path.
- Configure website with `{pkgdown}`.

codename 0.1.0
---------------------------------------------------------------------

  - Initial developmental release
