# 'Getting and Cleaning Data Project'

# Download and extract the data
datafile <- "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"
dataurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(dataurl, "data.zip")

# Read Activity Labels and Feature table
activitylabels <- read.table("UCI HAR Dataset/activity_labels.txt",col.names = c("activitycode","activity"))
features <- read.table("UCI HAR Dataset/features.txt",col.names = c("featurecode","function"))

# Read Test data
test_set <- read.table("UCI HAR Dataset/test/X_test.txt",col.names = features$functions)
test_labels <- read.table("UCI HAR Dataset/test/y_test.txt",col.names = c("activitycode"))
test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt",col.names= "subject")

# Read training data
train_set <- read.table("UCI HAR Dataset/train/X_train.txt",col.names = features$functions)
train_labels <- read.table("UCI HAR Dataset/train/y_train.txt",col.names =  c("activitycode"))
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt",col.names= "subject")

# Combining the test set, labels ans test subjects
test <- cbind(test_subjects,test_labels,test_set)

# Combining the trainset, labels and training subjects
train <- cbind(train_subjects,train_labels,train_set)

#Merging Test and Train datasets
merged_data <- rbind(test,train)

# Extracting only the measurements on the mean and standard deviation for each measurement.
cleandata <- merged_data %>% select(subject,activitycode,matches("mean|std",ignore.case = TRUE))

#Using descriptive activity names to name the activities in the set.
cleandata$activitycode <- activitylabels[cleandata$activitycode,2]

#Appropriately labeling the data set with descriptive variable names
names(cleandata)[2] = "activity"
names(cleandata) <- gsub("BodyBody","Body",names(cleandata))
names(cleandata) <- gsub("^t","Time",names(cleandata))
names(cleandata) <- gsub("^f","Freq",names(cleandata))
names(cleandata) <- gsub("[[:punct:]]","",names(cleandata))
names(cleandata) <- gsub("mean","Mean",names(cleandata))
names(cleandata) <- gsub("std","Std",names(cleandata))
ames(cleandata) <- gsub("angle","Angle",names(cleandata))
names(cleandata) <- gsub("gravity","Gravity",names(cleandata))

#Creating a second independent tidy data set with the average of each variable for each activity and each subject.
tidydataset <- cleandata %>% 
  group_by(activity,subject) %>% 
  summarize_all(list(mean))

#Writing the tidy data set to output file
write.table(tidydataset, file= "FinalTidyData.txt",row.names = FALSE)
