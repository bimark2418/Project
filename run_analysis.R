
#load libraries required for the analysis
library(dplyr)

### Load data sets ####
#assumes the working directory (dataPATH) corresponds to the folder UCI HAR Dataset (extracted from zip file)
#setwd(dataPATH)

train <- read.table("./train/X_train.txt") #Training set
train_subjects <- read.table("./train/subject_train.txt") #training subjects labels
train_activities <- read.table("./train/y_train.txt") #training activities labels 

features <- read.table("./features.txt") #features names


test <- read.table("./test/X_test.txt") #Test set
test_subjects <- read.table("./test/subject_test.txt") #test subjects labels
test_activities <- read.table("./test/y_test.txt") #test activities labels 



### Assign variable names to datasets  (label the datasets with descriptive variable names)
colnames(train) <- as.vector(features$V2) 
colnames(train) #checks the recently added variable names


colnames(test) <- as.vector(features$V2) 
colnames(test) #checks the recently added variable names


### Add subjectID, activityID, setID to train and testing datasets
train$subjectID <- train_subjects$V1 #adds subject ID to rows

train$activityID <- train_activities$V1 #adds activity label to rows
train$activityID <- as.factor(train$activityID)
levels(train$activityID) <- c("WALKKING", "WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")

train$setID <- "train" #used to identify if the row comes from the train or test data set

head(train)



test$subjectID <- test_subjects$V1 #adds subject ID to rows

test$activityID <- test_activities$V1 #adds activity label to rows
test$activityID <- as.factor(test$activityID)
levels(test$activityID) <- c("WALKKING", "WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")

test$setID <- "test"  #used to identify if the row comes from the train or test data set

head(test)


### Merge the train and test data sets
mergedData <- rbind(train, test)


### Extracts only the measurements on the mean and standard deviation for each measurement

varsToKeep = colnames(mergedData)[grep("mean|std",colnames(mergedData))] #used grep function to find columns with either "mean" or "std" in their name

varsToKeep = c("subjectID","activityID","setID",varsToKeep) #adds subjectID, activityID and setID to the list

subsetData <- subset(mergedData, select = varsToKeep)


### Creates a tidy datset with the average of each variable for each activity and each subject

#Group By subJectID and activityID
subsetData <- group_by(subsetData, subjectID, activityID)

#create tidy dataset
tidyData <- summarise_each(subsetData, funs(mean), -setID) #setID is not required

#write tidy dataset to txt file
write.table(tidyData,file="tidyData.txt", row.names=FALSE)

