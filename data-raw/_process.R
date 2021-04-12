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

# colors ----
# https://xkcd.com/color/rgb.txt

xkcd_colors <- read_tsv("data-raw/colors.tsv") %>%
  arrange(value) %>%
  select(-hex) %>%
  print()


save(xkcd_colors, file="data/xkcd_colors.rda")

# god (greek) -----

readr::melt_table2("data-raw/gods-greek.txt", skip = 1)

# gods (top 10 per)

gods <- readxl::read_excel("data-raw/gods.xlsx") %>%
  fill(type) %>%
  mutate(value = str_to_lower(value),
         type = str_to_lower(type)) %>%
  group_by(value) %>%
  slice(1) %>%
  ungroup() %>%
  print()

save(gods, file="data/gods.rda")

# wu generator -----

wu_adjs <- readr::read_tsv("data-raw/wu_adjs.txt")
wu_nouns <- readr::read_tsv("data-raw/wu_nouns.txt")

save(wu_adjs, file="data/wu_adjs.rda")
save(wu_nouns, file="data/wu_nouns.rda")

# list of random-ass nouns -----


nouns <- readr::read_tsv("data-raw/nouns.txt")
save(nouns, file="data/nouns.rda")
