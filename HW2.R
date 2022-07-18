df1=data.frame(Name=c('James','Paul','Richards','Marico','Samantha','Ravi','Raghu',
                      'Richards','George','Ema','Samantha','Catherine'),
               State=c('Alaska','California','Texas','North Carolina','California','Texas',
                       'Alaska','Texas','North Carolina','Alaska','California','Texas'),
               Sales=c(14,24,31,12,13,7,9,31,18,16,18,14))
aggregate(df1$Sales, by=list(df1$State), FUN=sum)
library(dplyr)
df1 %>% group_by(State) %>% summarise(sum_sales = sum(Sales))

#question 2
#Use R to read the WorldCupMatches.csv from the DATA folder on Google Drive. Then perform the followings (48
#points):
  # (a) Find the size of the data frame. How many rows, how many columns?
  #(b) Use summary function to report the statistical summary of your data.
  #(c) Find how many unique locations olympics were held at.
  #(d) Find the average attendance.
  #(e) For each Home Team, what is the total number of goals scored? (Hint: Please refer to question 1)
  #(f) What is the average number of attendees for each year? Is there a trend or pattern in the data in that sense?
  df =read.csv("C:/Users/Akila/Documents/visualization/WorldCupMatches.csv", header=T)
  nrow(df)
  ncol(df)
  summary(df)
  unique(df$City)
  length(unique(df$City))
  mean(df$Attendance,na.rm = T)
  aggregate(df$Home.Team.Goals, by =list(df$Home.Team.Name), FUN=sum)
  aggregate(df$Attendance, by=list(df$Year), FUN=mean)
  
  #question 3
  #Use R to read the metabolites.csv from the DATA folder on Google Drive. Then perform the followings (32 points):
  #  (a) Find how many Alzheimers patients there are in the data set. (Hint: Please refer to question 1)
  #(b) Determine the number of missing values for each column. (Hint: is.na( ) )
  #(c) Remove the rows which has missing value for the Dopamine column and assign the result to a new data frame.
  #(Hint: is.na( ) )
  #(d) In the new data frame, replace the missing values in the c4-OH-Pro column with the median value of the same
  #column. (Hint: there is median( ) function.)
  #(e) (Optional) Drop columns which have more than 25% missing values. (Hint: when you slice your data frame, you
  #can use -c(.., ..., ...) where ... represent one column name)
  df =read.csv("C:/Users/Akila/Documents/visualization/metabolite.csv", header=T)
  summary(df)
  df$Label
  aggregate("Alzheimer", list(df$Label), FUN=length)
  library(dplyr)
  
  df %>% 
    count("Alzheimer")
  is.na(df)
  
  