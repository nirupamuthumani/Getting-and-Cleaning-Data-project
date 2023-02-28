# Getting-and-Cleaning-Data-project
This project is the course project for Getting and Cleaning Data. The project uses data from UCI- Machine Learning Repository - Human Activity Recognition using Smartphones dataset.
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
Full description of the data is available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.
Data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Project Files:
  Script: run_analysis.R
  Tidy Data Output : FinalTidyData.txt
  Description : Codebook.md
The script run_analysis.R does the following operations:
  Merges the training and the test sets to create one data set.
  Extracts only the measurements on the mean and standard deviation for each measurement.
  Uses descriptive activity names to name the activities in the data set
  Appropriately labels the data set with descriptive variable names.
  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
The output of the data cleaning process is the text file 'FinalTidyData.txt'.
The file Codebook.md describes the proceessing steps and descriptions of the variables used in the process.
