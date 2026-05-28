library(tidyverse)
d <- read_csv('https://tinyurl.com/gapcsv')
write_csv(d,'data/gapminder.csv')

#På plot gdpPercap vs. lifeExp i 1952 ses en outlier, det undersøges at Kuwait er ouelier og denne sorteres fra:
d <- read_csv("data/gapminder.csv")
d_clean <- d %>%
  filter(!(country == "Kuwait"))

# Gem den rensede version
write_csv(d_clean, "data/gapminder.csv")
