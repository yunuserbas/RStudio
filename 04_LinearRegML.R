

# Linear regression used in this project.

# First : Use a linear regression to predict the price according to one variable.

setwd("C:/Users/yunus/Downloads/")
house_data <- read.csv("kc_house_data.csv")
head(house_data)

lm_model <- lm(price ~ bedrooms, data = house_data)
summary(lm_model)

predict(lm_model, newdata = data.frame(bedrooms = 3))



# Second : Use a linear regression to predict the price according to multiple variables.



