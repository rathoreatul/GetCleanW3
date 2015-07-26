library(data.table)
library(reshape2)
setwd("C:/Users/e73d36g/Documents/DataScience/GIT/3-week3")

# download the file and unzip if is not already there.
if (!file.exists("UCI HAR Dataset")) {
 fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
 download.file(fileUrl, destfile = "Dataset.zip")
 unzip("Dataset.zip")
}

# load data
S_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
S_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
A_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features_data <- read.table("UCI HAR Dataset/features.txt")
features_head<-features_data[,2]
names(X_test)<-features_head
names(X_train)<- features_head
mean_std<- grepl("mean\\(\\)|std\\(\\)",features_head)

X_test_meanstd<- X_test[,mean_std]
X_train_meanstd<- X_train[,mean_std]

# merge 
S_merge<-rbind(S_test,S_train)
X_merge <- rbind(X_test_meanstd,X_train_meanstd)
Y_merge <- rbind(Y_test,Y_train)
All_merged <-cbind(S_merge,Y_merge,X_merge)

names(All_merged)[1]<-"SubjectID"
names(All_merged)[2]<- "Activity"

#Aggregate
Aggregate_S_A <- aggregate(. ~ SubjectID + Activity, data = All_merged, FUN = mean)

Aggregate_S_A$Activity <- factor(Aggregate_S_A$Activity, labels=A_labels[,2])

#Write:
write.table(Aggregate_S_A,file="./tidyAggragete.txt",sep="\t",row.name=FALSE)
