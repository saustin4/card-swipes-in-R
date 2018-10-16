#load the data
setwd("C:/Users/saustin4/Desktop/swipe/")
myData <- read.csv("xxxport.csv", head = TRUE)


object.size(myData)

#memory.size(max=FALSE)
#memory.limit(size=12000)

#transform the data
myData$RETAIN <- as.factor(myData$RETAIN)
myData$COUNT <- as.numeric(myData$COUNT)
myData$ID <- as.factor(myData$ID)
myData$WEEK1 <- as.numeric(myData$WEEK1)
myData$WEEK2 <- as.numeric(myData$WEEK2)
myData$WEEK3 <- as.numeric(myData$WEEK3)
myData$WEEK4 <- as.numeric(myData$WEEK4)
myData$WEEK5 <- as.numeric(myData$WEEK5)
myData$WEEK6 <- as.numeric(myData$WEEK6)
myData$WEEK7 <- as.numeric(myData$WEEK7)
myData$WEEK8 <- as.numeric(myData$WEEK8)
myData$WEEK9 <- as.numeric(myData$WEEK9)
myData$WEEK10 <- as.numeric(myData$WEEK10)
myData$WEEK11<- as.numeric(myData$WEEK11)
myData$WEEK12<- as.numeric(myData$WEEK12)
myData$WEEK13<- as.numeric(myData$WEEK13)
myData$WEEK14<- as.numeric(myData$WEEK14)
myData$WEEK15<- as.numeric(myData$WEEK15)
myData$WEEK16<- as.numeric(myData$WEEK16)
myData$WEEK17<- as.numeric(myData$WEEK17)
myData$WEEK18<- as.numeric(myData$WEEK18)
myData$WEEK19<- as.numeric(myData$WEEK19)
myData$WEEK20<- as.numeric(myData$WEEK20)
myData$WEEK21<- as.numeric(myData$WEEK21)
myData$WEEK22<- as.numeric(myData$WEEK22)
myData$WEEK23<- as.numeric(myData$WEEK23)
myData$WEEK24<- as.numeric(myData$WEEK24)
myData$WEEK25<- as.numeric(myData$WEEK25)


#model the data
StacyModel <- glm(RETAIN ~ WEEK1 + WEEK2 + WEEK3 + WEEK4 + WEEK5 
                  + WEEK6 + WEEK7 + WEEK8 + WEEK9 + WEEK10 + WEEK11 + WEEK12 
                  + WEEK13 + WEEK14,
                  data = myData ,
                  family = binomial())


summary(StacyModel)
plot(StacyModel)


#---------------------------------

