## Getting and Cleaning Data Course Project
## December 18, 2014

#initialization
library(dplyr)

fnames_tst <- c("UCI HAR Dataset/test/X_test.txt", "UCI HAR Dataset/test/y_test.txt","UCI HAR Dataset/test/subject_test.txt")
fnames_trn <- c("UCI HAR Dataset/train/X_train.txt", "UCI HAR Dataset/train/y_train.txt","UCI HAR Dataset/train/subject_train.txt")
labels <- "UCI HAR Dataset/activity_labels.txt"
features <- "UCI HAR Dataset/features.txt"
target <- "UCI_tidy.txt"

#1. Merges the training and the test sets to create one data set x, y and s.

x<-tbl_df(rbind(read.table(fnames_trn[1]),read.table(fnames_tst[1]))) 
y<-tbl_df(rbind(read.table(fnames_trn[2]),read.table(fnames_tst[2])))
s<-tbl_df(rbind(read.table(fnames_trn[3]),read.table(fnames_tst[3])))
l<- tbl_df(read.table(labels))
f<- tbl_df(read.table(features))

#2. Extracts only the measurements on the mean and standard deviation for each measurement.
m <- f[grep("mean\\(\\)|std\\(\\)", f$V2),]
x2 <- x[, m$V1]

#3. Uses descriptive activity names to name the activities in the data set
activity <- inner_join(l, y, by = "V1")
x3 <- cbind(activity$V2, x2)

#4. Appropriately labels the data set with descriptive variable names.
x4 <- cbind(s, x3)  #add subject column

m$V2 <- gsub("\\(\\)", "", m$V2) #make variable names more descriptive than original names
m$V2 <- gsub("^t", "time", m$V2)
m$V2 <- gsub("^f", "frq", m$V2)

names(x4) <- c("Subject", "Activity", as.vector(m$V2))

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
x5 <- aggregate(x4[,3:68], x4[,1:2], FUN=mean)

#Save it
write.table(x5, target, row.name=FALSE )