# clear workspace
rm(list = ls())

# load packages
library(plyr)

# set working directory
setwd("~/Dropbox/Projects/ACA_Opinion")

# load polls
kaiser.2013.05 <- read.csv("Data/Cleaned_Poll_Data/kaiser_2013_05.csv")
kaiser.2013.06 <- read.csv("Data/Cleaned_Poll_Data/kaiser_2013_06.csv")
kaiser.2013.07 <- read.csv("Data/Cleaned_Poll_Data/kaiser_2013_07.csv")
kaiser.2013.08 <- read.csv("Data/Cleaned_Poll_Data/kaiser_2013_08.csv")
kaiser.2013.09 <- read.csv("Data/Cleaned_Poll_Data/kaiser_2013_09.csv")

d <- rbind(kaiser.2013.05,
           kaiser.2013.06,
           kaiser.2013.07,
           kaiser.2013.08,
           kaiser.2013.09)
summary(d)

write.csv(d, "Data/poll_data.csv", row.names = FALSE)