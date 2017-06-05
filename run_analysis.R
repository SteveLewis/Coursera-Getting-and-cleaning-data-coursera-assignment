# download the data

if(!file.exists("./assignment-dataset.zip")) {
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./assignment-dataset.zip")
}

# Unzip the file
unzip("assignment-dataset.zip", exdir = "assignment-dataset")

list.files("assignment-dataset")

# set the working directory
setwd("./assignment-dataset/UCI HAR Dataset")

# code starts here if already in the "UCI HAR Dataset" directory

X_test <- read.table("./test/X_test.txt")
Y_test <- read.table("./test/Y_test.txt")
X_train <- read.table("./train/X_train.txt")
Y_train <- read.table("./train/Y_train.txt")
activity_labels <- read.table("./activity_labels.txt")
features <- read.table("./features.txt")
subject_test <- read.table("./test/subject_test.txt")
subject_train <- read.table("./train/subject_train.txt")

# add column names to tables; need to transpose "features" dataset first

library(data.table)
tfeatures <- transpose(features)
colnames(X_test) <- tfeatures[2,] # 2nd row of transposed "features" dataset becomes column names of X_test
colnames(X_train) <- tfeatures[2,]
colnames(Y_test) <- "Activity"
colnames(Y_train) <- "Activity"
colnames(subject_test) <- "Subject"
colnames(subject_train) <- "Subject"

# combine the 6 datasets into one big dataset
data <- rbind(cbind(X_test,cbind(Y_test, subject_test)), cbind(X_train,cbind(Y_train, subject_train)))
# check size of dataset; should be 10299 x 563
dim(data)

# extract the columns we need - ie those that have mean() or std() in their name (plus Activity and Subject):
# grepl with give us a true/false vector with the index we need
req_column_index <- grepl("mean()|std()|Activity|Subject", colnames(data))
# now subset by this index
req_columns <- data[, req_column_index]
# check size of dataset; should be 10299 x 81
dim(req_columns)

# replace the numbers 1-6 in the Activity column with labels from the activity_labels table (merge the "activity_labels" data into the req_columns table to get activity descriptions):
new <- merge(req_columns, activity_labels, by.x = "Activity", by.y = "V1", all.x = TRUE)

# use dplyr to remove unwanted column
library(dplyr)
dataset<- tbl_df(new)
# remove the previous "Activity" column (with numbers 1-6)
dataset<- select(dataset, -Activity)
# rename the V2 column as "Activity"
colnames(dataset)[colnames(dataset) == "V2"] <- "Activity"

# label the dataset with descriptive variable names

colnames(dataset)<- gsub("^t","Time Domain ", colnames(dataset))
colnames(dataset)<- gsub("^f","Frequency Domain ", colnames(dataset))
colnames(dataset)<- gsub("Body","Body ", colnames(dataset))
colnames(dataset)<- gsub("Gravity","Gravity ", colnames(dataset))
colnames(dataset)<- gsub("Acc","Accelerator ", colnames(dataset))
colnames(dataset)<- gsub("Gyro","Gyroscope ", colnames(dataset))
colnames(dataset)<- gsub("-","", colnames(dataset))
colnames(dataset)<- gsub("[.().]","", colnames(dataset))
colnames(dataset)<- gsub("mean","mean ", colnames(dataset))
colnames(dataset)<- gsub("std","std ", colnames(dataset))
colnames(dataset)<- gsub("Jerk","Jerk ", colnames(dataset))
colnames(dataset)<- gsub("Mag","Magnitude ", colnames(dataset))
colnames(dataset)<- gsub("mean Freq","Mean Frequency ",  colnames(dataset))

# put the data into long-format
library(reshape2)
mdataset <- melt(dataset, id.vars = c("Subject", "Activity"))

# create the tidy data set of mean values (one row for each value)
tidy_data <- dcast(mdataset, Activity+Subject ~ variable, mean)

# write the output dataset to a text file
write.table(tidy_data, "tidy_data.txt", row.names = FALSE)
