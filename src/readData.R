#in readData.R read in the data and save it
#Opened readData.R
library(dplyr)
library(readr)
library(fields)
library(lme4)
library(ggplot2)


#Read in data
kahuna <- read_csv('data/2018-11-26_2017-Cape-Hatteras-BRS-kahuna-CEE.csv')
#in the future, make sure you are in the correct working directory by adding the folder or ../data/the file name
#positional data about the RV Kahuna
kStart <- kahuna %>%
  filter(status == 'start')

#Read in Gm182 Data: 100 estimated positions
gm182UP <- read_csv('data/2018-11-27_Gm182-UserPoints-Start-CEE-Locations-Kahuna.csv') %>% 
  mutate(status = 'userPoints')

#Read in gm182
gm182 <- read_csv('data/2018-11-27_Gm182-Start-CEE-Locations-Kahuna.csv') %>% 
  mutate(status = 'noUserPoints')
