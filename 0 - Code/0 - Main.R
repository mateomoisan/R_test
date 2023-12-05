# # ############################################################################"
# # Création le 04/01/2021
# # Veltys-Tuto introduction bases de données
# # Main
# 
# Objectif: Importer les bibliothèques + set les path
# 
# TODO:

# control A -> tout selectionner
# Bug: 

###############################################################################
library(tidyverse)
library(lubridate)
library(readxl)
library(hmi)
library(lubridate)
library(zoo)
library(ggplot2)
library(chron)

wd <- Sys.getenv("R_enviro")   

setwd(wd)

input <- './1 - Data/0 - Input/'
intermediate <- './1 - Data/1 - Intermediate/'
output <- './2 - Output/'


