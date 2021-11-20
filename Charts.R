# Import dependencies
library(ggplot2)
library(plotly)

# set working directory
setwd("C:/Users/Saurabh/Desktop/640/Week 11&12")

#load datasets
state_edu <- read.csv("C:/Users/Saurabh/Desktop/640/Week 11&12/education.csv")
birthRate <- read.csv("C:/Users/Saurabh/Desktop/640/Week 11&12/birth-rate.csv")

#create histogram
ggplot(state_edu,aes(x=writing), main = 'Math Score Range',xlab= 'Math Score',
       ylab ='Score') +geom_histogram(bins = 10)
     
#create box plot
boxplot(state_edu$math,varwidth = TRUE, bins = 12, main = 'Math Score Range',xlab= 'Math Score',
        ylab ='Score')

#Scatterplot
plot(state_edu$dropout_rate,state_edu$math, main="Scatterplot of Math Score and Drop out rate",
     xlab="Drop Out Rate ", ylab="Math Score", pch=19)
#bullet chart
library(tidyverse)
tibble(
  name = "Score",
  quant_value = 75,
  qualitative = 100
) %>% 
  ggplot(aes(x = quant_value, y = name)) +
  geom_col(aes(x = qualitative), fill = "light blue") +
  geom_col(width = 0.5, fill = "black") +
  coord_cartesian(ylim = c(0.3, 1.7)) +
  theme_minimal() +
  theme(panel.grid.major.y = element_blank())