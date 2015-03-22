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
This R-script file contains the source code that was written to obtain and clean the given dataset to have a output as required for the course project. A brief description of the data manipulation is given here:

The following files from the original dataset was used:
* features.txt
* activity_labels.txt
* train/x_train.txt
* train/y_train.txt
* test/x_test.txt
* test/y_test.txt
