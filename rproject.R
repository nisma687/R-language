
dataset = read.csv('Dataset_1.csv')
dataset

summary(dataset)
str(dataset)



ls(dataset) 


typeof(dataset$Borrower)
typeof(dataset$Loan)
typeof(dataset$Interest_rate)
typeof(dataset$Credit_Score)



mean(dataset$Loan)
mean(dataset$Interest_rate)
install.packages("DescTools")
library(DescTools)
modeValue_Loan <- Mode(dataset$Loan)
modeValue_Interest_rate <- Mode(dataset$Interest_rate)
median(dataset$Loan)
median(dataset$Interest_rate)
modeValue_Loan
modeValue_Interest_rate


install.packages('dplyr')
library(dplyr)
dataset[,2:3] %>% summarise_if(is.numeric, sd)
range(dataset$Loan)
range(dataset$Interest_rate)


library("DescTools")
modeValue <- Mode(dataset$Credit_Score)
modeValue




dataset1 = read.csv('Dataset_2.csv')
dataset1

dataset1$Type[dataset1$Type==""] <- NA
colSums(is.na(dataset1))

plot(dataset1$Price,dataset1$Rooms)
dataset1$Price[dataset1$Price<=300000] <- NA

dataset1$Type = factor(dataset1$Type,
                       levels = c("h","m","l"),
                       labels = c(1,2,3))

remove_row = 
  dataset1[complete.cases(dataset1$Rooms,dataset1$Price), ]

dataset1$Rooms[is.na(dataset1$Rooms)] = mean(dataset1$Rooms, 
                                             na.rm = TRUE)
dataset1$Price[is.na(dataset1$Price)] = mean(dataset1$Price, na.rm = 
                                               TRUE)


dataset1$Price[is.na(dataset1$Price)] = median(dataset1$Price, na.rm 
                                               = TRUE)
dataset1$Rooms[is.na(dataset1$Rooms)] = median(dataset1$Rooms, 
                                               na.rm = TRUE)


dataset1$Rooms[is.na(dataset1$Rooms)] <- Mode(dataset1$Rooms, 
                                              na.rm = TRUE)
dataset1$Price[is.na(dataset1$Price)] <- Mode(dataset1$Price, na.rm 
                                              = TRUE)






