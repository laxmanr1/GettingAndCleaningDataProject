#Getting and Cleaning Data Project

##Description
  Information about the variables, data and transformations used in the project for the Getting and Cleaning Data course.

##Source Data
  A full description of the data used in this project can be found at The UCI Machine Learning Repository.  
  The source data for this project can be found at [THIS URL](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

##Data Set Information
  The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.  
  Data was collected against six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.  
  More information can be found at [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  

##Attribute Information
  The following information can be found for each record in the dataset:  
  
  Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.  
  Triaxial Angular velocity from the gyroscope.  
  A 561-feature vector with time and frequency domain variables.  
  Its activity label.  
  An identifier of the subject who carried out the experiment.  

##Data cleaning process
  1. Merge the training and the test sets to create one data set.
     After setting the source directory for the files, read into tables the data located in
*   features.txt
*   activity_labels.txt
*   subject_train.txt
*   x_train.txt
*   y_train.txt
*   subject_test.txt
*   x_test.txt
*   y_test.txt
     
     Assign column names and merge to create one data set.

  2. Extract only the measurements on the mean and standard deviation for each measurement.
     Use a logical vector to subset only the ID, mean and stdev columns and eliminate the columns.  

  3. Use descriptive activity names to name the activities in the data set
     Merge the subset data from step 2 with the activityType table to inlude the descriptive activity names

  4. Appropriately label the data set with descriptive activity names.
     Use gsub function for pattern replacement to clean up the data labels.

  5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.

##Variables
*subjectId: 1 to 30 each representing a participant in the study
*activity: the activity that the subject was doing at the time of the measurement
*tBodyAcc-mean-X
*tBodyAcc-mean-Y
*tBodyAcc-mean-Z
*tBodyAcc-std-X
*tBodyAcc-std-Y
*tBodyAcc-std-Z
*tGravityAcc-mean-X
*tGravityAcc-mean-Y
*tGravityAcc-mean-Z
*tGravityAcc-std-X
*tGravityAcc-std-Y
*tGravityAcc-std-Z
*tBodyAccJerk-mean-X
*tBodyAccJerk-mean-Y
*tBodyAccJerk-mean-Z
*tBodyAccJerk-std-X
*tBodyAccJerk-std-Y
*tBodyAccJerk-std-Z
*tBodyGyro-mean-X
*tBodyGyro-mean-Y
*tBodyGyro-mean-Z
*tBodyGyro-std-X
*tBodyGyro-std-Y
*tBodyGyro-std-Z
*tBodyGyroJerk-mean-X
*tBodyGyroJerk-mean-Y
*tBodyGyroJerk-mean-Z
*tBodyGyroJerk-std-X
*tBodyGyroJerk-std-Y
*tBodyGyroJerk-std-Z
*tBodyAccMag-mean
*tBodyAccMag-std
*tGravityAccMag-mean
*tGravityAccMag-std
*tBodyAccJerkMag-mean
*tBodyAccJerkMag-std
*tBodyGyroMag-mean
*tBodyGyroMag-std
*tBodyGyroJerkMag-mean
*tBodyGyroJerkMag-std
*fBodyAcc-mean-X
*fBodyAcc-mean-Y
*fBodyAcc-mean-Z
*fBodyAcc-std-X
*fBodyAcc-std-Y
*fBodyAcc-std-Z
*fBodyAccJerk-mean-X
*fBodyAccJerk-mean-Y
*fBodyAccJerk-mean-Z
*fBodyAccJerk-std-X
*fBodyAccJerk-std-Y
*fBodyAccJerk-std-Z
*fBodyGyro-mean-X
*fBodyGyro-mean-Y
*fBodyGyro-mean-Z
*fBodyGyro-std-X
*fBodyGyro-std-Y
*fBodyGyro-std-Z
*fBodyAccMag-mean
*fBodyAccMag-std
*fBodyBodyAccJerkMag-mean
*fBodyBodyAccJerkMag-std
*fBodyBodyGyroMag-mean
*fBodyBodyGyroMag-std
*fBodyBodyGyroJerkMag-mean
*fBodyBodyGyroJerkMag-std
