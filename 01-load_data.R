library(tidyverse)

# placeholder for loading any kind of data that we want
mtcars

my_cars <- mtcars %>%
  mutate(
    car = rownames(mtcars)
  ) %>%
  select(car, everything())

readr::write_csv(my_cars, "my_cars.csv")
