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

colors <- read_tsv("data-raw/colors.tsv") %>%
  arrange(value)


save(colors, file="data/colors.rda")

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
