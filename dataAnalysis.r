library(dplyr)
library(ggplot2)
library(class)
library(gmodels)
library(class)
library(caTools)
library(kknn)
library(rpart)
library(DMwR)

### normalize function ###
normalize <- function(x) {
  num <- x - mean(x)
  denom <- sd(x)
  return (num/denom)
}

#rmse error function
rmse <- function(y,yhat) {
  num <- sum((y - yhat)^2)
  denom <- length(y)
  return(sqrt(num/denom))
}

# read in the dataset from the saved sql query
dataset = read.csv('C:/Users/Aidan/Documents/CSC 442/Project/regressorPreCleanedData.csv')


