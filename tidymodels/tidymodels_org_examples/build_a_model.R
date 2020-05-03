library(tidyverse)
library(tidymodels)

urchins <- read_csv("https://tidymodels.org/start/models/urchins.csv") %>% 
    setNames(c("food_regime", "initial_volume", "width")) %>% 
    mutate(food_regime = factor(food_regime, levels = c("Initial", "Low", "High")))
