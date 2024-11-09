library(readr)
library(dplyr)

distinct(superstore) #checking for duplicates
duplicated(superstore)

sum(is.na(superstore))#checking if there are any missing values
colSums(is.na(superstore))

str(superstore) #viewing the structure

head(superstore)
summary(superstore)

#summary by region
summary_by_region <- superstore %>%
  group_by(Region) %>%
  summarize(
    Total_Sales = sum(Sales),
    Average_Profit = mean(Profit),
    Number_of_Orders = n()
  )%>%
arrange(desc(Total_Sales))
print(summary_by_region)

#summary by category
summary_by_category <- superstore %>%
  group_by(Category) %>%
  summarize(
    Total_Sales = sum(Sales),
    Average_Profit = mean(Profit),
    Number_of_Orders = n()
  )
print(summary_by_category)

