library(ggplot2)
library(readr)
diabetes_data <- read_csv("diabetes.csv")
scatterplot <- ggplot(data = diabetes_data, aes(x = Age, y = BloodPressure)) +
  geom_point() +
  labs(x = "Age", y = "Blood Pressure") +
  ggtitle("Scatter Plot of Blood Pressure vs. Age")
age_groups <- cut(diabetes_data$Age, breaks = c(0, 30, 60, max(diabetes_data$Age)), labels = c("Young", "Middle-Aged", "Elderly"))
bar_chart_data <- data.frame(AgeGroup = age_groups, BloodPressure = diabetes_data$BloodPressure)
bar_chart <- ggplot(data = bar_chart_data, aes(x = AgeGroup, y = BloodPressure)) +
  geom_bar(stat = "summary", fun = "mean") +
  labs(x = "Age Group", y = "Average Blood Pressure") +
  ggtitle("Average Blood Pressure by Age Group")
scatterplot
bar_chart
