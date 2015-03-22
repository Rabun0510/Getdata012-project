#Getting and cleaning data
#Course Project

##Project description

The goal of this project was to use the priciples tought during this lecture to clean up the supplied dataset.

##Dataset description

The dataset that was supplied for the course project was used for human activity recognition using smartphones and is described as follows:

>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The dataset is composed of a set of files that had to be manipulated in order to obtain the necessary clean dataset.

##Repository details

###Codebook.md
This file contains information about the tidy dataset that was creating using the data as described above. 

###run_analysis.R
This R-script file contains the source code that was written to obtain and clean the given dataset to have a output as required for the course project.

The following files from the original dataset were used. A short description of what information was obtained from each file is given:

 Filename | File content
----------|--------------
features.txt|Names for the each variables
activity_labels.txt|The names for each activity
train/x_train.txt|Dataset that was used for training
train/y_train.txt|Activity labels that correspond to the training dataset
train/subject_train.txt|Subject label for each corresponding observation in training dataset
test/x_test.txt|Dataset that was used for testing
test/y_test.txt|Activity labels that correspond to the test dataset
test/subject_test/txt|Subject label for each corresponding observation in test dataset

The following steps were taken to obtain the tidy dataset:
* The training dataset and corresponding activity and subject labels were read.
* The test dataset and corresonding activity and subject labels were read.
* The names of all the feature variables were read.
* The names of all the activity variables were read.
* The test and train datasets were merged using rbind.
* The dataset column names were changed to the names form the features.txt file (The make.names function was used to create valid names since the original feature names contain invalid characters).
* The select function was used to select only the mean and standard deviation variables of each measurement.
* The subject and activity labels were merged to the dataset using cbind.
* The activity labels were substiduted with the actual names of the activities from the activity_labels.txt file.
* The aggregate function was used to obtain the mean of all the variables for each subject and each activity.
* The output was written to a textfile output.txt.

The code is properly commented so that the implementation of each of the above mentioned steps can be easily seen in the code.
