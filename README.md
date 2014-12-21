getData_project Readme
===============

Repo for Getting and Cleaning Data project

---
title: "CODEBOOK - Getting and Cleaning Data project"
author: "Mark Gao"
date: "Sunday, December 21, 2014"
output: html_document
---
Steps to get the tidy data set:

Step1. Merges the training and the test sets to create one data set x, y and s.

Step2. Use "grep" to extracts only the measurements on the mean and standard deviation for each measurement

Step3. Join label set to get descriptive activity names

Step4. Use gsub() to make variable names more descriptive and label the data set with these descriptive variable names

Step5. creates an independent tidy data set with the average of each variable for each activity and each subject (grouping by subject and activity)
