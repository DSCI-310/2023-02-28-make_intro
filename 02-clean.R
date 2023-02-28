library(tidyverse)

my_cars <- readr::read_csv("my_cars.csv")

my_cars <- my_cars %>%
  mutate(
    eff = mpg / disp
  ) %>%
  filter(
    mpg > 25
  )
my_cars

readr::write_csv(my_cars, "my_cars_cleaned.csv")
