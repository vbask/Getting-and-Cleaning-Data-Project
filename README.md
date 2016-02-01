           
## Getting and Cleaning HAR Data

### Input Data:
The required Human Activity Recognition data was available from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Data was manually downloaded and unzipped into the directory under "UCI HAR Dataset"

### run_analysis.R script

This script is then applied to clean, merge, tidy and summarize the data.

The following steps involved in the script:

- Read activity information from "./UCI HAR Dataset/activity_labels.txt" to associate activity index to labels.
- Read features variable names from "./UCI HAR Dataset/features.txt", and make them valid unique variable names (using make.names)

There are two functions **load_HAR_dataset** and **cleanup_vars** defined in this script.

load_HAR_dataset is used to load test and train datasets and do initial preparation.

load_HAR_dataset takes three files as the arguments:

1. test (or train) dataset file
2. test (or train) activity labels (indices) file
3. and a file for test (or train) subjects who performed the activities for each window sample

load_HAR_dataset was applied twice - once for test dataset, and the other for training dataset.

After loading the dataset, unique variable names added, and only the columns containing the text "mean" or "std" (all lowercase) are chosen for further processing. The test (or train) datasets were augumented with activities and the corresponding subjects who performed the activities.

The test and training datasets were merged to just one dataset, and cleanup_vars were called to replace variable names with descriptive variable names.

Finally an independent tidy data set (final_data) is created containing the average of each variable for each activity and each subject.
