library(dplyr)
library(readr)
library(fields)
library(lme4)
library(ggplot2)

install.packages("fields")

gmpts$d2ship <- rdist.earth.vec(cbind(kStart$longitude, kStart$latitude), 
                                cbind(gmpts$longitude, gmpts$latitude))

gmpts %>% 
  group_by(status) %>% 
  summarize(mean = mean(d2ship, na.rm = TRUE))

