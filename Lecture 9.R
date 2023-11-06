library(dplyr)
library(stringr)

cansus_df <- read.csv("est16us.csv")
food_cost_df <- read.csv("Food_Costs.csv")

#data cleaning
#remove all NA values which is logically the same as keep all rows that dont have na values

food_cost_df <- filter(food_cost_df, !is.na(Cumulative.Cost))
combo_df <- merge(x = census_df, y = food_cost_df, 
                  by.x = "Name", by.y = "State.Agency.or.Indian.Tribal.Organization",
                  all.x = TRUE)