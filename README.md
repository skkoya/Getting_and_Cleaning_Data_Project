#Getting and cleaning Data Project

##Files in this Repo

1. README.Md  (Details the purpose of this repo)
2. CodeBook.Md (Describes the variables)
3. run_analysis.R (Script file that performs the analysis)
4. Processed_Data.txt (The resulting cleaned up data)

##Data acquisition 

Raw data used for this project was obtained from Machine Learning Repository of University of California, Irvine. Raw data was collected from the accelerometers of the Samsung Galaxy S smartphone by various participants while performing 6 different activities over a period of time. This data was than divided into training (70%) and test (30%) data sets. 

A detailed description of data collection is available at
https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Compressed raw data was downloaded from this link
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Purpose of this Project

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The raw data was processed by run_analysis.R script through following steps to produce tidy data set. 

1. Download the compressed data file from the url and read the appropriate files. 
2. Merge the training and the test data sets to create one data set.
3. Extract only mean and standard deviation for each measurement. 
4. Use descriptive activity names to name the activities in the data set.
5. Appropriately label the data set with descriptive variable names. 
6. From the data set in step 4, creates a second, independent tidy data set (Processed_Data.txt) with the average of each variable for each activity and each subject.


