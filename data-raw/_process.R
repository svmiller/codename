library(tidyverse)

# adjectives ----

adjectives <- readr::read_tsv("data-raw/adjectives.txt")

save(adjectives, file="data/adjectives.rda")


# animals ----

animals <- readr::read_tsv("data-raw/animals.txt")

animals %>%
  mutate(value = str_to_lower(value),
         words = str_count(value, "\\S+")) %>%
  filter(words == 1) %>%
  mutate(length = str_length(value)) %>%
  arrange(-length) %>% # checks out
  select(value) %>%
  arrange(value) -> animals


save(animals, file="data/animals.rda")
