# Raw data

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Here are the data for the project: 
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

# Data transformation

## Step 1. Merges the training and the test sets to create one data set.

Function: `getdata012.read`
- read data from files:
  - './UCI HAR Dataset/features.txt'
  - './UCI HAR Dataset/train/X_train.txt'
  - './UCI HAR Dataset/train/y_train.txt'
  - './UCI HAR Dataset/train/subject_train.txt'
  - './UCI HAR Dataset/test/X_test.txt'
  - './UCI HAR Dataset/test/y_test.txt'
  - './UCI HAR Dataset/test/subject_test.txt'
- bind columns with subjects, X and y from train and test data
- merge train and test data
- change column names based on names from 'features.txt' with names clearing

## Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.

Function: `getdata012.select`
- Select columns:
  - subject
  - activity
  - all columns those contains `mean.`
  - all columns those contains `std.`

## Step 3. Changes activity ids on descriptive activity names in the data set

Function: `getdata012.activity`
- read activity labels from file `./UCI HAR Dataset/activity_labels.txt`
- change activity ids on activity labels

## Step 4. Creates tidy data set with the average of each variable for each activity and each subject

Function: `getdata012.group`
- group data by columns subject and activity
- apply 'mean' for each columns

# Tidy data description

Result data contains variables:
- subject - the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- activity - activity labels:
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING 
- features columns:
  - tBodyAcc.mean...X
  - tBodyAcc.mean...Y
  - tBodyAcc.mean...Z
  - tBodyAcc.std...X
  - tBodyAcc.std...Y
  - tBodyAcc.std...Z
  - tGravityAcc.mean...X
  - tGravityAcc.mean...Y
  - tGravityAcc.mean...Z
  - tGravityAcc.std...X
  - tGravityAcc.std...Y
  - tGravityAcc.std...Z
  - tBodyAccJerk.mean...X
  - tBodyAccJerk.mean...Y
  - tBodyAccJerk.mean...Z
  - tBodyAccJerk.std...X
  - tBodyAccJerk.std...Y
  - tBodyAccJerk.std...Z
  - tBodyGyro.mean...X
  - tBodyGyro.mean...Y
  - tBodyGyro.mean...Z
  - tBodyGyro.std...X
  - tBodyGyro.std...Y
  - tBodyGyro.std...Z
  - tBodyGyroJerk.mean...X
  - tBodyGyroJerk.mean...Y
  - tBodyGyroJerk.mean...Z
  - tBodyGyroJerk.std...X
  - tBodyGyroJerk.std...Y
  - tBodyGyroJerk.std...Z
  - tBodyAccMag.mean..
  - tBodyAccMag.std..
  - tGravityAccMag.mean..
  - tGravityAccMag.std..
  - tBodyAccJerkMag.mean..
  - tBodyAccJerkMag.std..
  - tBodyGyroMag.mean..
  - tBodyGyroMag.std..
  - tBodyGyroJerkMag.mean..
  - tBodyGyroJerkMag.std..
  - fBodyAcc.mean...X
  - fBodyAcc.mean...Y
  - fBodyAcc.mean...Z
  - fBodyAcc.std...X
  - fBodyAcc.std...Y
  - fBodyAcc.std...Z
  - fBodyAccJerk.mean...X
  - fBodyAccJerk.mean...Y
  - fBodyAccJerk.mean...Z
  - fBodyAccJerk.std...X
  - fBodyAccJerk.std...Y
  - fBodyAccJerk.std...Z
  - fBodyGyro.mean...X
  - fBodyGyro.mean...Y
  - fBodyGyro.mean...Z
  - fBodyGyro.std...X
  - fBodyGyro.std...Y
  - fBodyGyro.std...Z
  - fBodyAccMag.mean..
  - fBodyAccMag.std..
  - fBodyBodyAccJerkMag.mean..
  - fBodyBodyAccJerkMag.std..
  - fBodyBodyGyroMag.mean..
  - fBodyBodyGyroMag.std..
  - fBodyBodyGyroJerkMag.mean..
