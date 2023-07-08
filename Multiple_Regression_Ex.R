### Example of simple regression

library(tidyr)

### load datafile and check dimension, remove column for month, remove N/A
car_data <- read.csv("C:\\Users\\alexd\\R_Files_Data\\Multiple_Regression\\can_new_car_sales_1.csv")

head(car_data)
dim(car_data)
car_data_sm <- car_data[, 2:6]
head(car_data_sm)
tail(car_data_cl)
is.na(car_data_cl)
car_data_cl <- drop_na(car_data_sm)

### fit the regression model
tot_car_sales = lm(formula = tot_cars ~ val_000s_per + fuel_cost + cpi_x_energy,
                   data=car_data_cl)


### examine results
summary(tot_car_sales)

model_residuals = tot_car_sales$residuals
hist(model_residuals)

qqnorm(model_residuals)
qqline(model_residuals)

### multicollinearity checks

library(ggcorrplot)
library(Hmisc)

### use lasso to resolve fit issues
install.packages("lars")
library("lars")







               