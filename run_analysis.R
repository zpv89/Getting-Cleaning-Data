## This script contains the work done towards:
# Getting & cleaning data - John Hpkins Coursera coursework
# For ease of marking the code has been split into the 5 steps listed in the assignment
# Code has been commented throughout to assist with understanding

## Load packages
library(data.table)

## Get raw data - load in all the text files, no/minimal manipulation in this section
features <- read.table("UCI HAR Dataset/features.txt",stringsAsFactors = FALSE,sep="",col.names = c("Index","FeatureName"))

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt",col.names = c("ClassLabel","ActivityName"))

training_set <- read.table("UCI HAR Dataset/train/x_train.txt",sep="")
training_labels <- read.table("UCI HAR Dataset/train/y_train.txt",sep = "",col.names = c("Activity"))
training_subject <- read.table("UCI HAR Dataset/train/subject_train.txt",sep="",col.names = c("SubjectID"))

testing_set <- read.table("UCI HAR Dataset/test/x_test.txt",sep="")
testing_labels <- read.table("UCI HAR Dataset/test/y_test.txt",sep="",col.names = c("Activity"))
testing_subject <-read.table("UCI HAR Dataset/test/subject_test.txt",sep="",col.names = c("SubjectID"))


## 1) Merge the training and test sets to create one data set

merged_training <- cbind(training_subject,training_labels,training_set)
merged_testing <- cbind(testing_subject,testing_labels,testing_set)
MergedData <- rbind(merged_testing,merged_training)
colnames(MergedData)[3:ncol(MergedData)]<- features[,2] #rename cols based on features variable


## 2) Extracts only the measurements on the mean and standard deviation for each measurement
# I will also keep the SubjectID and Activity columns as these will be of use later
WantedData <- MergedData[grep("SubjectID|Activity|mean\\(\\)|std\\(\\)",names(MergedData))]

## 3) Uses descriptive activity names to name the activities in the data set
# Replace all the numbers in activity col of WantedData to their corresponding strings from activity_labels variable

for (activity in 1:nrow(activity_labels)){
  WantedData$Activity[WantedData$Activity==activity] <- as.character(activity_labels[activity,2])
}


## 4) Appropriately labels the data set with descriptive variable names


## 5) From the data set in step 4, creates a second, independent tidy data set with the average
## of each variable for each activity and each subject
