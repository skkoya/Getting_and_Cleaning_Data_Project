#run_analysis.R function will perform the following tasks. 
#1. Download data from the url
#2. Merges the training and the test sets to create one data set.
#3. Extracts only the measurements on the mean and standard deviation for each measurement. 
#4. Uses descriptive activity names to name the activities in the data set
#5. Appropriately labels the data set with descriptive variable names. 
#6. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#clean environment and load libraries
rm(list = ls(all = TRUE))
library(plyr) 
library(data.table) 
library(dplyr)
####################################################################################################

#1. Download data from the url
#Check to see if file is downloaded. If not download the data from the url  
filename <- "UCI HAR Dataset"
zfilename <- "getdata-projectfiles-UCI HAR Dataset.zip"
if(! file.exists(zfilename)){
        message("File doesn't exist. Downloading compressed file from the archive")
        fileURL = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(url = fileURL, destfile = zfilename)
}

#Check to see if file is uncompressed. If not extract data. 
if(! file.exists(filename)){
        message("Extracting the data")
        unzip(zipfile = zfilename)
}

rm(filename, zfilename)
#read feature and activity file
features <- read.table("UCI HAR Dataset/features.txt")
activity <- read.table("UCI HAR Dataset/activity_labels.txt")

#read test files
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

#read train files
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
###################################################################################

#2. Merge the training and the test sets to create one data set.
X_all <- rbind(X_train, X_test)
Y_all <- rbind(Y_train, Y_test)
subjects_all <- rbind(subject_test, subject_train)
rm(X_test,Y_test,X_train,Y_train,subject_train,subject_test) #remove unnecessary files
###################################################################################

#5. Appropriately labels the data set with descriptive variable names.
names(X_all) = features[,2] #replace v names with corresponding feature names
names(Y_all) = c("activityID")
names(subjects_all) = c("subjects")
names(activity) = c("activityID", "activityName")
###################################################################################

#3. Extracts only the measurements on the mean and standard deviation for each measurement. 
mindex <- grep("mean",features[, 2]) #get any feature that has mean in it 
mindex <- append(mindex, 555:561) #555:561 are also means but were not identified by above command. Add them to the index. 
sindex <- grep("std",features[, 2]) #get any feature that has std in it. 
mergedindex<- unique(c(mindex,sindex)) # Remove duplicates and merge indeces.

#using the mergedindex extract column data for means and stds. 
X_all_diced <- X_all[mergedindex]
rm(mindex, sindex, mergedindex) #remove unnecessary files
###################################################################################

#4. Use descriptive activity names to name the activities in the data set
#From Y_all_labeled table, take the activity and merge it with X_all_diced table to the corresponding activity. 
Y_all_labeled <- merge(Y_all, activity, "activityID")
X_all_diced$Activity <- Y_all_labeled[,2]
#From Subjects_all table, take subjects and appropritate them to X_all_diced table subjects. 
X_all_diced$Subjects <- subjects_all[, 1]
X_all_diced$Subjects <- sub("^", "Participant ", X_all_diced$Subjects) #change subject names to descriptive
rm(X_all, Y_all, Y_all_labeled, subjects_all, activity, features) #remove unnecessary files.
#clean up names and descriptive terms. 
names(X_all_diced) <- gsub("Acc", "_Accelerator", names(X_all_diced))
names(X_all_diced) <- gsub("Mag", "_Magnitude", names(X_all_diced))
names(X_all_diced) <- gsub("Gyro", "_Gyroscope", names(X_all_diced))
names(X_all_diced) <- gsub("^t", "Time_", names(X_all_diced))
names(X_all_diced) <- gsub("^f", "Frequency_", names(X_all_diced))
names(X_all_diced) <- gsub("std", "StDev", names(X_all_diced))
names(X_all_diced) <- gsub("mean", "Mean", names(X_all_diced))
###################################################################################

#6. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
X_all_diced.dt <- data.table(X_all_diced)
TidyData <- X_all_diced.dt[, lapply(.SD, mean), by = 'Subjects,Activity']
write.table(TidyData, file = "Processed_Data.txt", row.names = FALSE)
rm(X_all_diced, X_all_diced.dt) #remove unnecessary files. 




