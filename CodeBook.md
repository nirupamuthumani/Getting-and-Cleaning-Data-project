{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "c65f7f3c",
   "metadata": {},
   "source": [
    "# Getting and Cleaning Data Course Project\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "18a23f85",
   "metadata": {},
   "source": [
    "Full description of the data is obtained from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "84d55c03",
   "metadata": {},
   "source": [
    "## Data"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c688a1b1",
   "metadata": {},
   "source": [
    "Data for the project:\n",
    "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip\n",
    "\n",
    "The data is from UCI Machine Learning Repository : Human Activity Recognition Using Smartphones Dataset\n",
    "    "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fe69b042",
   "metadata": {},
   "source": [
    "## Processing Steps"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c0046b24",
   "metadata": {},
   "source": [
    "Data was downloaded from the source files and the data assigned to variables.\n",
    "- activitylabesl <- List of activities performed with their codes\n",
    "- features <- Features from the accelerometer and gyroscope\n",
    "- Test Data \n",
    "    - test_set - contains test data of activities\n",
    "    - test_labels <- contains the code labels of the activites\n",
    "    - test_subjects <- identifies the subject who performed the activity undet test category\n",
    "- Train Data\n",
    "    - train_set - contains training data of activities\n",
    "    - train_labels <- contains the code labels of the activites\n",
    "    - train_subjects <- identifies the subject who performed the activity under training category "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "14ddec47",
   "metadata": {},
   "source": [
    "## Merging the test and train data\n",
    "    - test <- is created by merging test_set,test_labels and test_subjects using cbind() function.\n",
    "    - train <- is created by merging train_set,train_labels and train_subjects using cbind() function.\n",
    "merged_data <- is odtained by merging the test and train data using rbind().\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "259e880e",
   "metadata": {},
   "source": [
    "## Extracting only the measurements on mean and standard deviation\n",
    "cleandata <- is obtained by subsetting merged_data, selecting only the columns, subject,the activity code \n",
    "and the measurements on mean and standard deviation  for each row. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "edc4b1a6",
   "metadata": {},
   "source": [
    "## Descriptive activity names to name the activities in the set\n",
    "The activitycode column which contains all the codes for the activities are replaced by the activity name.\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "385dac37",
   "metadata": {},
   "source": [
    "## Descriptive variable names\n",
    "    - the *activitycode* column is renamed as *activity* using names() function\n",
    "    - the term *BodyBody* replaced as *Body* using names() function \n",
    "    - the columns starting with abbreviation *'t'* are substituted with *'Time'*\n",
    "    - the columns starting with abbreviation  *'f'* are substituted with *'Freq'*\n",
    "    - the columns with punctuation characters in the column are replaced with empty strings\n",
    "    - the columns with string *mean* are substituted with *Mean*\n",
    "    - the columns with string *std* are substituted with *Std*\n",
    "    - the columns with string *angle* are substituted with *Angle*\n",
    "    - the columns with string *gravity* are substituted with *Gravity*\n",
    "    "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9195900a",
   "metadata": {},
   "source": [
    "## Creating a second, independent tidy data set with the average of each variable for each activity and each subject.\n",
    "The final *tidydataset*  is created from the *cleandata* by grouping the dataset based on *subjects* and *activity* and summarizing the data such that each row displayed the *mean* of the of the columns for that activity.\n",
    "The resulting dataset is written to a text file *FinalTidyData.txt*."
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3 (ipykernel)",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.9.12"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
