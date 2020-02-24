# Fixing was implemented based on this discussion:
# https://www.kaggle.com/ronitf/heart-disease-uci/discussion/105877


library(tidyverse)

heart <- read_csv("Raw Data/heart.csv")

heart <- heart %>%
  subset(ca!=4) %>%
  subset(thal!=0)

write_csv(heart, "Raw Data/heart.csv")
