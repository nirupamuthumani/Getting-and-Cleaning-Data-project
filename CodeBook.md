Getting and Cleaning Data Course Project
Full description of the data is obtained from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data is from UCI Machine Learning Repository : Human Activity Recognition Using Smartphones Dataset
    
Processing Steps.

Data was downloaded from the source files and the data assigned to variables.

activitylabels <- List of activities performed with their codes.

features <- Features from the accelerometer and gyroscope.

Test Data

test_set - contains test data of activities

test_labels <- contains the code labels of the activites

test_subjects <- identifies the subject who performed the activity undet test category

Train Data

train_set - contains training data of activities

train_labels <- contains the code labels of the activites

train_subjects <- identifies the subject who performed the activity under training category

Merging the test and train data.

- test <- is created by merging test_set,test_labels and test_subjects using cbind() function.

- train <- is created by merging train_set,train_labels and train_subjects using cbind() function.

merged_data <- is odtained by merging the test and train data using rbind().

Extracting only the measurements on mean and standard deviation.

cleandata <- is obtained by subsetting merged_data, selecting only the columns, subject,the activity code and the measurements on mean and standard deviation for each row.

Descriptive activity names to name the activities in the set.

The activitycode column which contains all the codes for the activities are replaced by the activity name.

Descriptive variable names.
    - the *activitycode* column is renamed as *activity* using names() function
    
    - the term *BodyBody* replaced as *Body* using names() function 
    
    - the columns starting with abbreviation *'t'* are substituted with *'Time'*
    
    - the columns starting with abbreviation  *'f'* are substituted with *'Freq'*
    
    - the columns with punctuation characters in the column are replaced with empty strings
    
    - the columns with string *mean* are substituted with *Mean*
    
    - the columns with string *std* are substituted with *Std*
    
    - the columns with string *angle* are substituted with *Angle*
    
    - the columns with string *gravity* are substituted with *Gravity*
    
Creating a second, independent tidy data set with the average of each variable for each activity and each subject.

The final tidydataset is created from the cleandata by grouping the dataset based on subjects and activity and summarizing the data such that each row displayed the mean of the of the columns for that activity. The resulting dataset is written to a text file FinalTidyData.txt.

