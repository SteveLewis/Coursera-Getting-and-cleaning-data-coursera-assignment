# Getting and Cleaning Data Course Assignment

## Background to the Data
The data has been collected from accelerometers from a Samsung Galaxy S smartphone. Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Further information about the data is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Experiments were carried out with a group of 30 volunteers (subjects) within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The embedded accelerometer and gyroscope captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


## The Data Files

The following data files were processed:

1. 'test/X_test.txt': Test dataset (30% of data)
2. 'train/X_train.txt': Training dataset (70% of data)
3. 'test/y_test.txt': Activity labels (1-6) for the Test dataset
4. 'train/y_train.txt': Activity labels (1-6) for the Training dataset
5. 'test/subject_test.txt': Each row identifies the subject (numbered 1-30) who performed the activities measured in the Test dataset.
6. 'train/subject_train.txt': Each row identifies the subject (numbered 1-30) who performed the activities measured in the Train dataset.
7.'features.txt': A List of all measurements taken.
8. 'activity_labels.txt': A table that links the activity class labels (1-6) with their activity name.

## The Output Dataset

The tidy data set has 81 variables as listed below.  Two of these are id variables: 
* Activity - the 6 activities that were measured (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING)
* Subject - the volunteers that performed the activfities, numbered from 1-30
The remainder (79) of the variables are mean or standard deviation measurements taken while the activities were performed, as follows:

 [1] "Activity"                             
 [2] "Subject"                               
 [3] "Time Domain Body Accelerator mean X"      
 [4] "Time Domain Body Accelerator mean Y"      
 [5] "Time Domain Body Accelerator mean Z"    
 [6] "Time Domain Body Accelerator std X"      
 [7] "Time Domain Body Accelerator std Y"      
 [8] "Time Domain Body Accelerator std Z"      
 [9] "Time Domain Gravity Accelerator mean X"  
[10] "Time Domain Gravity Accelerator mean Y"  
[11] "Time Domain Gravity Accelerator mean Z"   
[12] "Time Domain Gravity Accelerator std X"   
[13] "Time Domain Gravity Accelerator std Y"     
[14] "Time Domain Gravity Accelerator std Z"     
[15] "Time Domain Body Accelerator Jerk mean X"  
[16] "Time Domain Body Accelerator Jerk mean Y"  
[17] "Time Domain Body Accelerator Jerk mean Z"  
[18] "Time Domain Body Accelerator Jerk std X"   
[19] "Time Domain Body Accelerator Jerk std Y"   
[20] "Time Domain Body Accelerator Jerk std Z"   
[21] "Time Domain Body Gyroscope mean X"        
[22] "Time Domain Body Gyroscope mean Y"               
[23] "Time Domain Body Gyroscope mean Z"               
[24] "Time Domain Body Gyroscope std X"                
[25] "Time Domain Body Gyroscope std Y"                
[26] "Time Domain Body Gyroscope std Z"               
[27] "Time Domain Body Gyroscope Jerk mean X"         
[28] "Time Domain Body Gyroscope Jerk mean Y"        
[29] "Time Domain Body Gyroscope Jerk mean Z"       
[30] "Time Domain Body Gyroscope Jerk std X"       
[31] "Time Domain Body Gyroscope Jerk std Y"              
[32] "Time Domain Body Gyroscope Jerk std Z"              
[33] "Time Domain Body Accelerator Magnitude mean "        
[34] "Time Domain Body Accelerator Magnitude std "        
[35] "Time Domain Gravity Accelerator Magnitude mean "     
[36] "Time Domain Gravity Accelerator Magnitude std "     
[37] "Time Domain Body Accelerator Jerk Magnitude mean "  
[38] "Time Domain Body Accelerator Jerk Magnitude std "   
[39] "Time Domain Body Gyroscope Magnitude mean "       
[40] "Time Domain Body Gyroscope Magnitude std "        
[41] "Time Domain Body Gyroscope Jerk Magnitude mean "   
[42] "Time Domain Body Gyroscope Jerk Magnitude std "    
[43] "Frequency Domain Body Accelerator mean X"         
[44] "Frequency Domain Body Accelerator mean Y"        
[45] "Frequency Domain Body Accelerator mean Z"       
[46] "Frequency Domain Body Accelerator std X"        
[47] "Frequency Domain Body Accelerator std Y"       
[48] "Frequency Domain Body Accelerator std Z"      
[49] "Frequency Domain Body Accelerator Mean Frequency X"
[50] "Frequency Domain Body Accelerator Mean Frequency Y" 
[51] "Frequency Domain Body Accelerator Mean Frequency Z"  
[52] "Frequency Domain Body Accelerator Jerk mean X"      
[53] "Frequency Domain Body Accelerator Jerk mean Y"      
[54] "Frequency Domain Body Accelerator Jerk mean Z"     
[55] "Frequency Domain Body Accelerator Jerk std X"     
[56] "Frequency Domain Body Accelerator Jerk std Y"    
[57] "Frequency Domain Body Accelerator Jerk std Z"      
[58] "Frequency Domain Body Accelerator Jerk Mean Frequency X" 
[59] "Frequency Domain Body Accelerator Jerk Mean Frequency Y" 
[60] "Frequency Domain Body Accelerator Jerk Mean Frequency Z" 
[61] "Frequency Domain Body Gyroscope mean X"                 
[62] "Frequency Domain Body Gyroscope mean Y"               
[63] "Frequency Domain Body Gyroscope mean Z"              
[64] "Frequency Domain Body Gyroscope std X"             
[65] "Frequency Domain Body Gyroscope std Y"           
[66] "Frequency Domain Body Gyroscope std Z"         
[67] "Frequency Domain Body Gyroscope Mean Frequency X"  
[68] "Frequency Domain Body Gyroscope Mean Frequency Y"   
[69] "Frequency Domain Body Gyroscope Mean Frequency Z"   
[70] "Frequency Domain Body Accelerator Magnitude mean "  
[71] "Frequency Domain Body Accelerator Magnitude std "  
[72] "Frequency Domain Body Accelerator Magnitude Mean Frequency "   
[73] "Frequency Domain Body Body Accelerator Jerk Magnitude mean "   
[74] "Frequency Domain Body Body Accelerator Jerk Magnitude std " 
[75] "Frequency Domain Body Body Accelerator Jerk Magnitude Mean Frequency "
[76] "Frequency Domain Body Body Gyroscope Magnitude mean " 
[77] "Frequency Domain Body Body Gyroscope Magnitude std "  
[78] "Frequency Domain Body Body Gyroscope Magnitude Mean Frequency " 
[79] "Frequency Domain Body Body Gyroscope Jerk Magnitude mean "   
[80] "Frequency Domain Body Body Gyroscope Jerk Magnitude std "   
[81] "Frequency Domain Body Body Gyroscope Jerk Magnitude Mean Frequency "  

## Tidy Data

The resulting dataset is tidy as:
* Each variable forms a column (and there are no duplicate columns)
* Each observation forms a row
* Each table/file stores data about one kind of observation.

For more information on 'tidy data' see: http://vita.had.co.nz/papers/tidy-data.pdf


## The R code

The R code run_analysis.R performs the following steps (as described in the course project instructions):

1. It downloads and unzips the data files, sets the working directory and reads into R the above 8 files.
2. It adds column names to the data tables.  The features.txt file was to give the X_train and X_test datasets column names. 
3. It combines the data sets, using the cbind and rbind functions,  to create one dataset.
4. It extracts from the dataset only the columns with mean and standard deviation measurements
5. It adds descriptive activity names to name the activities in the dataset (taken from features.txt).
6. It gives the dataset appropriate descriptive labels
7. It creates a new 'tidy' dataset with the average of each variable for each subject and activity type (There are 30 subjects and 6 activities, so 180 rows in the output dataset). The output file is called tidy_data.txt, and has been uploaded to this repository.

