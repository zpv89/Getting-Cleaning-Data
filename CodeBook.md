## Getting and Cleaning Data Project
======

Author: zpv89

### Description

This file is a summary of the data in the final output of run_analysis.R "TidyData.txt"

### Brief outline
The run_analysis.R code is fully commented to explain what it does at each step.
As a summary, the code reads in the raw data [description of data and source can be found in the README.md file of this repository] from the training and testing folders, and merges these together to create a full set of data. Then the measurement means and standard deviations (columns) are extraced to create a subset of the raw data. Finally the averages for each measurement type is calculated per subject and activity type are calculated and the results aggregated into the finaal tidy dataset writen to the text file. 

### Final Data Frame Variable Names
#### Identifiers [non measured data]
* SubjectID
* Activity
#### Measurement averages by subject and activity [calculated from measured data]
* tBodyAcc-mean-X   
* tBodyAcc-mean-Y
* tBodyAcc-mean-Z
* tBodyAcc-std-X           
* tBodyAcc-std-Y
* tBodyAcc-std-Z
* tGravityAcc-mean-X       
* tGravityAcc-mean-Y
* tGravityAcc-mean-Z
* tGravityAcc-std-X        
* tGravityAcc-std-Y
* tGravityAcc-std-Z
* tBodyAccJerk-mean-X      
* tBodyAccJerk-mean-Y
* tBodyAccJerk-mean-Z
* tBodyAccJerk-std-X       
* tBodyAccJerk-std-Y
* tBodyAccJerk-std-Z
* tBodyGyro-mean-X         
* tBodyGyro-mean-Y
* tBodyGyro-mean-Z
* tBodyGyro-std-X          
* tBodyGyro-std-Y
* tBodyGyro-std-Z
* tBodyGyroJerk-mean-X     
* tBodyGyroJerk-mean-Y
* tBodyGyroJerk-mean-Z
* tBodyGyroJerk-std-X      
* tBodyGyroJerk-std-Y
* tBodyGyroJerk-std-Z
* tBodyAccMag-mean         
* tBodyAccMag-std
* tGravityAccMag-mean
* tGravityAccMag-std       
* tBodyAccJerkMag-mean
* tBodyAccJerkMag-std
* tBodyGyroMag-mean        
* tBodyGyroMag-std
* tBodyGyroJerkMag-mean
* tBodyGyroJerkMag-std     
* fBodyAcc-mean-X
* fBodyAcc-mean-Y
* fBodyAcc-mean-Z          
* fBodyAcc-std-X
* fBodyAcc-std-Y
* fBodyAcc-std-Z           
* fBodyAccJerk-mean-X
* fBodyAccJerk-mean-Y
* fBodyAccJerk-mean-Z      
* fBodyAccJerk-std-X
* fBodyAccJerk-std-Y
* fBodyAccJerk-std-Z       
* fBodyGyro-mean-X
* fBodyGyro-mean-Y
* fBodyGyro-mean-Z         
* fBodyGyro-std-X
* fBodyGyro-std-Y
* fBodyGyro-std-Z          
* fBodyAccMag-mean
* fBodyAccMag-std
* fBodyBodyAccJerkMag-mean 
* fBodyBodyAccJerkMag-std
* fBodyBodyGyroMag-mean
* fBodyBodyGyroMag-std     
* fBodyBodyGyroJerkMag-mean
* fBodyBodyGyroJerkMag-std 