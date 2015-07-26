# GetCleanW3
Getting and Cleaning Data   Course Project

- You should create one R script called run_analysis.R that does the following. 
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



Steps:
Download the data source and put into a folder on your local drive. The code will unzip and will create a folder called "UCI HAR Dataset".
copy the code run_analysis.R in the parent folder, this code will set your working directory to this location.
Run source("run_analysis.R"), this will create a file called tidyAggragete.txt

Dependencies

reshape2
data.table

The script will need to source these libraries.
