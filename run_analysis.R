# Code to load, merge, clean & save data downloaded from the provided site as part of the project assignment
# for week 4 of Coursera: Getting and Cleaning Data 

# load the two sets of data to be merged
# "test"
subject_test = read.table("./dataset/test/subject_test.txt")
X_test = read.table("./dataset/test/X_test.txt")
Y_test = read.table("./dataset/test/Y_test.txt")
 
# "training"
subject_train = read.table("./dataset/train/subject_train.txt")
X_train = read.table("./dataset/train/X_train.txt")
Y_train = read.table("./dataset/train/Y_train.txt")
  
# load lookup information
features <- read.table ("./dataset/features.txt", col.names=c("featureId", "featureLabel"))
activities <- read.table ("./dataset/activity_labels.txt", col.names=c("activityId", "activityLabel"))

activities$activityLabel <- gsub("_", "", as.character(activities$activityLabel))  # remove ALL dashes from label
includedFeatures <- grep("-mean\\(\\)|-std\\(\\)", features$featureLabel)          # we only want mean & std features

  
# merge test and training data and then name them
subject <- rbind (subject_test, subject_train)                                     # row bind the test & train data into the "subject" variable
names(subject) <- "subjectId"                                                      # give the column a name
X <- rbind(X_test, X_train)                                                        # row bind X data
X <- X[, includedFeatures]                                                         # get only desired columns 
names(X) <- gsub("\\(|\\)", "", features$featureLabel[includedFeatures])           # remove the brackets from the names
Y <- rbind(Y_test, Y_train)
names(Y) = "activityId"
activity <- merge(Y, activities, by="activityId")$activityLabel

# merge data frames of different columns to form one data table
mergedTidyData <- cbind(subject, X, activity)                                      # use column bind to merge multiple files
write.table(mergedTidyData, "merged_tidy_data.txt", row.names=FALSE)               # write out the first file (merged data)
  

# create a dataset grouped by subject and activity after applying standard deviation and average calculations
library(data.table)
dataDT <- data.table(mergedTidyData)
calculatedData<- dataDT[, lapply(.SD, mean), by=c("subjectId", "activity")]        # calculate & group
write.table(calculatedData, "calculated_tidy_data.txt", row.names=FALSE)           # write out the second file
