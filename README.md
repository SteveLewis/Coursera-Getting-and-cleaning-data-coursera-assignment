# Coursera-Getting-and-cleaning-data-coursera-assignment

## End of course assignment for the Johns Hopkins Data Science Specialisation Course "Getting and Cleaning Data"

This repository contans the files required for the end of course assignment for "Getting and Cleaning Data":

1. The script run.analysis.R (which downloads the files, combines them and prepares them as per the instuctions:

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

2. The resulting tidy data set: tidy_data.txt

3. A codebook that describes the variables, data, transformations and work performed to clean up the data.

The following packages are required to run run.analysis.R:
* library(data.table)
* library(dplyr)
* library(reshape2)

The code to read the tidy dataset is: 
tidy_soln <- read.table("./tidy_data.txt", header = TRUE)
str(tidy_soln)

The tidy dataset is tidy as:
* Each variable forms a column (and there are no duplicate columns)
* Each observation forms a row
* Each table/file stores data about one kind of observation.

For more information on 'tidy data' see: http://vita.had.co.nz/papers/tidy-data.pdf


License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.