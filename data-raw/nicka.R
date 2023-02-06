library(tidyverse)
library(codename)

# http://www.designation-systems.net/usmilav/codenames.html

nicka_blocks <- read_csv("~/Dropbox/projects/codename/data-raw/nicka-blocks.csv") %>%
  rename(block = 1,
         first_letters = 2,
         assigned_to = 3) %>%
  mutate(assigned_to = case_when(
    assigned_to == "DCA (Defense Communications Agency) (note 1)" ~ "DCA (Defense Communications Agency)",
    assigned_to == "DMA (Defense Mapping Agency) (note 2)" ~ "DMA (Defense Mapping Agency)",
    assigned_to == "DIS (Defense Investigative Service) (note 3)" ~ "DIS (Defense Investigative Service)",
    TRUE ~ assigned_to
  ))

tibble(let1 = LETTERS,
       let2 = LETTERS) %>%
  expand(let1, let2) %>%
  mutate(letnum = seq(1:n())) %>%
  mutate(letlet = paste0(let1, let2)) %>%
  select(letlet, letnum) -> let_let

nicka_blocks %>%
  separate(first_letters, remove=FALSE, c("first", "last"), sep=" - ") %>%
  left_join(., let_let, by=c("first"="letlet")) %>%
  rename(letnumstart = letnum) %>%
  left_join(., let_let, by=c("last"="letlet")) %>%
  rename(letnumend = letnum) %>%
  filter(assigned_to != "-") %>%
  rowwise() %>%
  mutate(letnum = list(seq(letnumstart, letnumend))) %>%
  unnest(letnum) %>%
  left_join(., let_let) %>%
  select(block, first_letters, letlet, assigned_to) -> nicka_blocks


save(nicka_blocks, file="data/nicka_blocks.rda")
