           
# setwd("03-Getting-and-Cleaning-Data/week4/project")

library(data.table)
library(dplyr)

# Read the Activity Labels
activity <- fread("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors=T,
                  col.names = c("index", "label"), data.table=F)

# Get Features Variables
features <- make.names(fread("./UCI HAR Dataset/features.txt",
                             select=c(2), data.table=F)[,1], unique = T)

# utility function to load test and train datasets and do initial preparation
load_HAR_dataset <- function (file.X, file.y, file.subject) {
  fread(file.X, col.names = features, data.table=F) %>%
    # not ignoring case to get exactly the ones that contain "mean" or "std" 
    select(contains("mean", ignore.case=F), contains("std", ignore.case=F)) %>%
    mutate(activity = activity$label[match(fread(file.y, data.table=F)[,1],
                                           activity$index)],
           subject = scan(file.subject, flush = T)) %>%
    select(activity, subject, everything())
}
           
# Load and do initial preparation of Test and Train Data and merge to one dataset
HAR_data <-
  load_HAR_dataset(file.X = "./UCI HAR Dataset/test/X_test.txt",
                   file.y = "./UCI HAR Dataset/test/y_test.txt",
                   file.subject = "./UCI HAR Dataset/test/subject_test.txt") %>%
  bind_rows(load_HAR_dataset(file.X = "./UCI HAR Dataset/train/X_train.txt",
                             file.y = "./UCI HAR Dataset/train/y_train.txt",
                             file.subject = "./UCI HAR Dataset/train/subject_train.txt"))

# to replace variable names with descriptive variable names.
cleanup_vars <- function(nv) {
    nv <- gsub("tBodyAcc", "time.BodyAccelerometer.", nv, fixed = T)
    nv <- gsub("tBodyGyro", "time.BodyGyro.", nv, fixed = T)
    nv <- gsub("tGravityAcc", "time.GravityAccelerometer.", nv, fixed = T)
    nv <- gsub("fBodyAcc", "frequency.BodyAccelerometer.", nv, fixed = T)
    nv <- gsub("fBodyGyro", "frequency.BodyGyro.", nv, fixed = T)
    nv <- gsub("fBodyBody", "frequency.Body.", nv, fixed = T)
    nv <- gsub("...", ".", nv, fixed = T)
    nv <- gsub("..", ".", nv, fixed = T)
    gsub("\\.+$", "", nv)
}

colnames(HAR_data) <- cleanup_vars(colnames(HAR_data))

# Final independent tidy data set with the average of
# each variable for each activity and each subject.
final_data <-
    HAR_data %>%
    group_by(activity, subject) %>%
    summarise_each(funs(mean))
           
# Not sure the requirement expects writing final tidy data to be
# included as part of the run_analysis.R script - so commenting this.
# write.table(final_data, "final-tidy-data.txt", row.name=FALSE)
