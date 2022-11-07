dataset=read.csv("Dataset_1.csv")
dataset
summary(dataset)#shape of dataset
str(dataset)
ls(dataset)#showing attributes name
typeof(dataset$Borrower)
typeof(dataset$Interest_rate)
typeof(dataset$Loan)
typeof(dataset$Credit_Score)

#mean median dplyr
#mode Desctools

mean(dataset$Loan)
mean(dataset$Interest_rate)

install.packages('dplyr')
library('dplyr')
dataset[,2:3] %>% summarise_if(is.numeric, mean)
dataset[,2:3] %>% summarise_if(is.numeric,median)

median(dataset$Loan)
median(dataset$Interest_rate)
dataset[,3:4] %>% summarise_if(is.numeric,median)
range(dataset$Borrower)
install.packages("DescTools")
library("DescTools")
Mode(dataset$Loan)
modelala=Mode(dataset$Interest_rate)
modelala



library("dplyr")
dataset[,2:3] %>% summarise_if(is.numeric,sd)
dataset[,2:3] %>% summarise_if(is.numeric, sd) #standarddaviation
range(dataset$Loan)

mode(dataset$Credit_Score)
range(dataset$Interest_rate)

library("DescTools")
modeValue <- Mode(dataset$Credit_Score)
modeValue



#importing second dataset
dataset2=read.csv("Dataset_2.csv")

dataset2

dataset2$Type[dataset2$Type==""]=NA
colSums(is.na(dataset2))
dataset2$Type[dataset2$type=""]=NA
colSums(is.na(dataset2))

dataset2$Price[dataset2$Price<=300000]=NA
plot(dataset2$Price,dataset2$Rooms)

dataset2$Type= factor(dataset2$Type,
                      levels = c("h","m","l"),
                      labels = c(1,2,3))
dataset2$Type=factor(dataset2$Type,levels = c("h","m","l"),labels =c (1,2,3))

dataset2$type[is.na(dataset2$Type)]=factor(levels = c("h","m","l"),
                                           labels = c(1,2,3))
remove_row=dataset2[complete.cases(dataset2$Rooms,dataset2$Price), ]
remove_row=dataset2[complete.cases(dataset2$Rooms,dataset2$Price),]
remove_row=dataset2[complete.cases(dataset2$Type),]
dataset2$Rooms[is.na(dataset2$Rooms)]=mean(dataset2$Rooms,na.rm = TRUE)
dataset2$Price[is.na(dataset2$Price)]=median(dataset2$Price,na.rm = TRUE)
dataset2$Price[is.na(dataset2$Price)] <- Mode(dataset2$Price, na.rm 
                                              = TRUE)
