# Codebook file

## Dataset description
The dataset includes the averages for a set of movement variables (mean and standard deviation variables) for each subject and each activity that was performed to create the original dataset.

##Data manipulation
The data from the training and test sets were merged into one dataset. The average of the mean and standard deviations for all the different movement variables that were recorded are given grouped by activity and then by subject.

## Variable description

### Activity
This show the activity that the subject was performing. It can take on one of the following six values:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

### Subject
Shows the label of the subject. It takes on the values between 1 and 30.

### Movement variables
The averages of the following variables for each subject and activity are given ( the variables are normalized and bound within [-1,1] ):

* tBodyAcc.mean.X
* tBodyAcc.mean.Y
* tBodyAcc.mean.Z
* tGravityAcc.mean.X
* tGravityAcc.mean.Y
* tGravityAcc.mean.Z
* tBodyAccJerk.mean.X
* tBodyAccJerk.mean.Y
* tBodyAccJerk.mean.Z 
* tBodyGyro.mean.X 
* tBodyGyro.mean.Y 
* tBodyGyro.mean.Z 
* tBodyGyroJerk.mean.X 
* tBodyGyroJerk.mean.Y 
* tBodyGyroJerk.mean.Z 
* tBodyAccMag.mean 
* tGravityAccMag.mean 
* tBodyAccJerkMag.mean 
* tBodyGyroMag.mean 
* tBodyGyroJerkMag.mean 
* fBodyAcc.mean.X 
* fBodyAcc.mean.Y 
* fBodyAcc.mean.Z 
* fBodyAcc.meanFreq.X 
* fBodyAcc.meanFreq.Y 
* fBodyAcc.meanFreq.Z 
* fBodyAccJerk.mean.X 
* fBodyAccJerk.mean.Y 
* fBodyAccJerk.mean.Z 
* fBodyAccJerk.meanFreq.X 
* fBodyAccJerk.meanFreq.Y 
* fBodyAccJerk.meanFreq.Z 
* fBodyGyro.mean.X 
* fBodyGyro.mean.Y 
* fBodyGyro.mean.Z 
* fBodyGyro.meanFreq.X 
* fBodyGyro.meanFreq.Y 
* fBodyGyro.meanFreq.Z 
* fBodyAccMag.mean 
* fBodyAccMag.meanFreq 
* fBodyBodyAccJerkMag.mean 
* fBodyBodyAccJerkMag.meanFreq 
* fBodyBodyGyroMag.mean 
* fBodyBodyGyroMag.meanFreq 
* fBodyBodyGyroJerkMag.mean 
* fBodyBodyGyroJerkMag.meanFreq 
* angle.tBodyAccMean.gravity
* angle.tBodyAccJerkMeangravityMean
* angle.tBodyGyroMean.gravityMean 
* angle.tBodyGyroJerkMean.gravityMean 
* angle.X.gravityMean 
* angle.Y.gravityMean 
* angle.Z.gravityMean 
* tBodyAcc.std.X 
* tBodyAcc.std.Y 
* tBodyAcc.std.Z 
* tGravityAcc.std.X
* tGravityAcc.std.Y 
* tGravityAcc.std.Z 
* tBodyAccJerk.std.X 
* tBodyAccJerk.std.Y 
* tBodyAccJerk.std.Z 
* tBodyGyro.std.X 
* tBodyGyro.std.Y 
* tBodyGyro.std.Z 
* tBodyGyroJerk.std.X 
* tBodyGyroJerk.std.Y 
* tBodyGyroJerk.std.Z 
* tBodyAccMag.std 
* tGravityAccMag.std 
* tBodyAccJerkMag.std 
* tBodyGyroMag.std 
* tBodyGyroJerkMag.std 
* fBodyAcc.std.X 
* fBodyAcc.std.Y 
* fBodyAcc.std.Z 
* fBodyAccJerk.std.X 
* fBodyAccJerk.std.Y 
* fBodyAccJerk.std.Z 
* fBodyGyro.std.X 
* fBodyGyro.std.Y 
* fBodyGyro.std.Z 
* fBodyAccMag.std 
* fBodyBodyAccJerkMag.std 
* fBodyBodyGyroMag.std 
* fBodyBodyGyroJerkMag.std