CodeBook
This code book describes the script, data it reviews and output file it generates.

Data Set Description

This data is on an experiment which was conducted on group of 30 voluntrees age between 19-48years. The activities were Walking, Walking_Upstrais, Waliking_downstairs,  laying, standing, sitting. This data was collected via smartphone (Samsung Galaxy S II)
.



Raw Data was downloaded from this link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Trasform Details: Follwoing steps were followed to transform the data and generage the output.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
