## Getting and Cleaning Data: Project Assignment

========================================================

#Pre-requisites:

The run-analysis.R script in this repo requires the user to first download and unzip the "Human Activity Recognition Using Smartphones Dataset"[1] from UCI at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Place the unzipped folder into the R working directory [and ensure the folder is called:UCI HAR Dataset).
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

It is also assumed the user has the data.table package installed.

#About the data

A detailed description of the study design can be found in the README.txt file in the unzipped data.
In brief, 'fitness' data from 30 subjects has been collected using a Samsung Galaxy II smartphone. The subjects performed a series of 6 activities (standing, sitting, laying down, walking, walking downstairs/upstairs)
The data is supplied in two groups, a training set of 21 subjects, and a test set of 9 subjects. There were 561 different 'features' (as outlined in the features.txt) collected.

#About the script: run_analysis.R

The run_analysis.R script does the following:
*Merges the training and the test sets to create one data set.
*Extracts only the measurements on the mean and standard deviation for each measurement.
*Uses descriptive activity names to name the activities in the data set
*Appropriately labels the data set with descriptive variable names.
*From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

More details about the data, variables and transformations used can be found in the CodeBook.md in this repo.
