# Step1. Merges the training and the test sets to create one data set.

#Reading Data
trainData <- read.table("./data/train/X_train.txt")
#dim(trainData) # 7352*561
trainLabel <- read.table("./data/train/y_train.txt")
#dim(trainLabel) 7352*1
trainSubject <- read.table("./data/train/subject_train.txt")
#dim(trainSubject) 7352 * 1
testData <- read.table("./data/test/X_test.txt")
#dim(testData) # 2947*561
testLabel <- read.table("./data/test/y_test.txt") 
#dim(testLable) 2947*1
testSubject <- read.table("./data/test/subject_test.txt")
#dim(testSubject) 2947 * 1

#Joining the Data
joinData <- rbind(trainData, testData)
#dim(joinData) # 10299*561
joinLabel <- rbind(trainLabel, testLabel)
#dim(joinLabel) # 10299*1
joinSubject <- rbind(trainSubject, testSubject)
#dim(joinSubject) # 10299*1

