library(dplyr)
library(tidyr)

#Read the data into variables
#Test variables dataset
testData <- read.table("./dataset/test/X_test.txt")
testLabel <- read.table("./dataset/test/Y_test.txt")
testSubject <- read.table("./dataset/test/subject_test.txt")

#Train variables dataset
trainData <- read.table("./dataset/train/X_train.txt")
trainLabel <- read.table("./dataset/train/Y_train.txt")
trainSubject <- read.table("./dataset/train/subject_train.txt")

#read feature variables
#This data will be used to properly name the variable names
features <- read.table("./dataset/features.txt")

#Read activity labels
#This data will be used to substitute the data activity labels with proper names
activityLabels <- read.table("./dataset/activity_labels.txt")

#Merge the test and train datasets
allData <- rbind(testData, trainData)
label <- rbind(testLabel, trainLabel)
subject <- rbind(testSubject, trainSubject)

#Rename the column names
names(label) <- "ActivityLabel"
names(subject) <- "SubjectLabel"
features <- make.names(features[,2], unique = TRUE, allow_ = TRUE)  #The original column names contain invalid characters
                                                                    #Use the make.names function to remove the invalid characters
features <- gsub("...", ".", features, fixed = TRUE)
names(allData) <- features #use valid names

#Select the necessary subset from the data, i.e. those that contain the characters "mean" and "std"
data <- select(allData, contains("mean"), contains("std"))

#Merge data with activity and subject labels
data <- cbind(subject, label, data)

#Use the merge function to substitute the activity labels with activity names
data <- merge(activityLabels,data, by.x = "V1", by.y = "ActivityLabel")
data <- select(data, -V1)
data <- rename(data, activityLabel = V2)

#Use the aggregate function to determine the mean of all the variables over each subject and each activity
outputData <- aggregate(data, by=list(Activity=data$activityLabel, Subject=data$SubjectLabel), FUN=mean)
outputData <- select(outputData, -c(activityLabel, SubjectLabel))

write.table(outputData, "./dataset/output.txt", row.names = FALSE)