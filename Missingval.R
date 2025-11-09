library("tidyr")
library("dplyr")

View(airquality)
structure(airquality)
summary(airquality)
sum(is.na(airquality))
colSums(is.na(airquality))

sapply(airquality, function(x) sum(is.na(x)))
which(is.na(airquality))
na.omit(airquality)

airquality$Ozone[is.na(airquality$Ozone)] <- mean(airquality$Ozone, na.rm=TRUE) 
airquality$Ozone

aq <- airquality

aq$Ozone <- as.character(aq$Ozone)
aq$Ozone[1] <- "ab"
aq$Ozone[2] <- " "

head(aq, 5)

is.na(aq$Ozone)
trimws(aq$Ozone) == ""

aq$Ozone[trimws(aq$Ozone)==""] <=NA
is.na(aq$Ozone)

class(airquality$Ozone)
str(airquality$Ozone)
typeof(airquality$Ozone)

airquality$Ozone <- as.character(airquality$Ozone)
class(airquality$Ozone)

airquality$Ozone <- as.integer(airquality$Ozone)
class(airquality$Ozone)

