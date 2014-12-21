---
title: "CODEBOOK - Getting and Cleaning Data project"
author: "Mark Gao"
date: "Sunday, December 21, 2014"
output: html_document
---

This is code book for the tidy data set of Getting and Cleaning Data project.
It has 68 variables: 2 descriptive variables and 66 measures(features). The measures are the average of each variable for each activity and each subject.

Here is the naming convension of measures:

time: time domain signal 

frq: frequency domain signal 

Body: body linear

Acc: acceleration 

Gyro: gyroscope 

Jerk:Jerk signal

Mag: magnitude of this signal

-X: 3-axial signals in the X direction

-Y: 3-axial signals in the Y direction

-Z: 3-axial signals in the Z direction



Variables:
 Subject                    : int, label of 30 volunteers  
 Activity                   : character, one of six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
 
 timeBodyAcc-mean-X         : num 
 timeBodyAcc-mean-Y         : num  
 timeBodyAcc-mean-Z         : num  
 timeBodyAcc-std-X          : num 
 timeBodyAcc-std-Y          : num  
 timeBodyAcc-std-Z          : num  
 timeGravityAcc-mean-X      : num  
 timeGravityAcc-mean-Y      : num  
 timeGravityAcc-mean-Z      : num  
 timeGravityAcc-std-X       : num  
 timeGravityAcc-std-Y       : num  
 timeGravityAcc-std-Z       : num  
 timeBodyAccJerk-mean-X     : num  
 timeBodyAccJerk-mean-Y     : num  
 timeBodyAccJerk-mean-Z     : num  
 timeBodyAccJerk-std-X      : num  
 timeBodyAccJerk-std-Y      : num  
 timeBodyAccJerk-std-Z      : num  
 timeBodyGyro-mean-X        : num  
 timeBodyGyro-mean-Y        : num  
 timeBodyGyro-mean-Z        : num  
 timeBodyGyro-std-X         : num  
 timeBodyGyro-std-Y         : num  
 timeBodyGyro-std-Z         : num  
 timeBodyGyroJerk-mean-X    : num  
 timeBodyGyroJerk-mean-Y    : num  
 timeBodyGyroJerk-mean-Z    : num  
 timeBodyGyroJerk-std-X     : num  
 timeBodyGyroJerk-std-Y     : num  
 timeBodyGyroJerk-std-Z     : num  
 timeBodyAccMag-mean        : num  
 timeBodyAccMag-std         : num  
 timeGravityAccMag-mean     : num  
 timeGravityAccMag-std      : num  
 timeBodyAccJerkMag-mean    : num  
 timeBodyAccJerkMag-std     : num  
 timeBodyGyroMag-mean       : num  
 timeBodyGyroMag-std        : num  
 timeBodyGyroJerkMag-mean   : num  
 timeBodyGyroJerkMag-std    : num  
 frqBodyAcc-mean-X          : num  
 frqBodyAcc-mean-Y          : num  
 frqBodyAcc-mean-Z          : num  
 frqBodyAcc-std-X           : num  
 frqBodyAcc-std-Y           : num  
 frqBodyAcc-std-Z           : num  
 frqBodyAccJerk-mean-X      : num  
 frqBodyAccJerk-mean-Y      : num  
 frqBodyAccJerk-mean-Z      : num  
 frqBodyAccJerk-std-X       : num  
 frqBodyAccJerk-std-Y       : num  
 frqBodyAccJerk-std-Z       : num  
 frqBodyGyro-mean-X         : num  
 frqBodyGyro-mean-Y         : num  
 frqBodyGyro-mean-Z         : num  
 frqBodyGyro-std-X          : num  
 frqBodyGyro-std-Y          : num  
 frqBodyGyro-std-Z          : num  
 frqBodyAccMag-mean         : num  
 frqBodyAccMag-std          : num  
 frqBodyBodyAccJerkMag-mean : num  
 frqBodyBodyAccJerkMag-std  : num  
 frqBodyBodyGyroMag-mean    : num  
 frqBodyBodyGyroMag-std     : num  
 frqBodyBodyGyroJerkMag-mean: num  
 frqBodyBodyGyroJerkMag-std : num  