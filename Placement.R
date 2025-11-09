library(dplyr)
library(tidyr)
library(readr)
library(ggplot2)

df <- read.csv("placement.csv")
View(df)

ggplot(df, aes(ssc_p, hsc_p))+geom_point()

View(mtcars)

ggplot(mtcars, aes(mpg, hp))+geom_point()
ggplot(mtcars, aes(mpg, disp))+geom_point(color="red", size=2, alpha=0.5)+labs(x="mpg", y="displacement")

ggplot(mtcars, aes(mpg, disp))+geom_point(color="red", size=2, alpha=0.5)+labs(x="mpg", y="displacement")+facet_wrap("am")
