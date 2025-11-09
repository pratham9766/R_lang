
library(tidyr)
library(dplyr)

# Q1

View(Placement_Data_Full_Class_3_)
df <- read_csv("placement.csv")

reshaped_df <- spread(df, key = workex, value = salary)

colnames(reshaped_df)[colnames(reshaped_df) == "No"] <- "Salary_without_WorkEx"
colnames(reshaped_df)[colnames(reshaped_df) == "Yes"] <- "Salary_with_WorkEx"

head(reshaped_df)

# Q2
result <- df %>%
  group_by(ssc_b) %>%
  summarise(
    student_count = n(),
    avg_ssc_marks = mean(ssc_p, na.rm = TRUE)
  )

print(result)

# Q3

df$avg_academics <- rowMeans(df[, c("ssc_p", "hsc_p", "degree_p", "mba_p")], na.rm = TRUE)

head(df)

# Q4

avg_salary_workex <- aggregate(salary ~ workex, data = df, FUN = mean, na.rm = TRUE)

print(avg_salary_workex)

# Q5

numeric_df <- df[, c("ssc_p", "hsc_p", "degree_p", "etest_p", "mba_p", "salary")]

head(numeric_df)

# Q6

placed_male_mkt_hr <- df[df$status == "Placed" & df$gender == "M" & df$specialisation == "Mkt&HR", ]

head(placed_male_mkt_hr)

# Q7

df1 <- data.frame(
  id = c(1, 2, 3),
  name = c("amit", "Neha", "rahul"),
  marks = c(85, 90, 78)
)

df2 <- data.frame(
  id = c(4, 5, 6),
  name = c("priya", "karan", "meena"),
  marks = c(88, 92, 80)
)

DF <- rbind(df1, df2)

print(DF)

# Q8

class(DF$id)

# Convert id to integer
DF$id <- as.integer(DF$id)

# Verify again
str(DF)

# Q9

# Structure of dataset
str(airquality)

# Statistical summary of dataset
summary(airquality)


