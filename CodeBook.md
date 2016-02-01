           
## Human Activity Recognition Using Smartphones Dataset
           
A full description of the dataset is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for _this project_ is obtained from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following description is from "UCI HAR Dataset" zip from the above link.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The experiments were video-recorded to label the data manually. The obtained dataset had been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force wss assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this dataset come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (time.BodyGyro.Jerk.mean.X, ...). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency domain signals.

-------
   
### Final Dataset
   
For each record in the final cleaned dataset it is provided:

- The average of each variable for each activity and each subject.
- Only the measurements containing the text "mean" or "std" (for standard deviation) in each measurement variable was extracted.
- A 81-feature vector (180 observations of 81 variables)
    + with time and frequency domain variables
    + its activity label. 
    + an identifier of the subject who carried out the experiment.
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- The extensions .X, .Y, or .Z (for e.g., time.BodyAccelerometer.mean.X) in the variable names represent the measurements in the X-axis, Y-axis, or Z-axis directions (i.e. to denote 3-axial signals in the X, Y and Z directions).

The complete list of variables of each feature vector is provided below:
           
```
activity: One of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
subject:  An identifier of the subject who carried out the experiment.
time.BodyAccelerometer.mean.X
time.BodyAccelerometer.mean.Y
time.BodyAccelerometer.mean.Z
time.GravityAccelerometer.mean.X
time.GravityAccelerometer.mean.Y
time.GravityAccelerometer.mean.Z
time.BodyAccelerometer.Jerk.mean.X
time.BodyAccelerometer.Jerk.mean.Y
time.BodyAccelerometer.Jerk.mean.Z
time.BodyGyro.mean.X
time.BodyGyro.mean.Y
time.BodyGyro.mean.Z
time.BodyGyro.Jerk.mean.X
time.BodyGyro.Jerk.mean.Y
time.BodyGyro.Jerk.mean.Z
time.BodyAccelerometer.Mag.mean
time.GravityAccelerometer.Mag.mean
time.BodyAccelerometer.JerkMag.mean
time.BodyGyro.Mag.mean
time.BodyGyro.JerkMag.mean
frequency.BodyAccelerometer.mean.X
frequency.BodyAccelerometer.mean.Y
frequency.BodyAccelerometer.mean.Z
frequency.BodyAccelerometer.meanFreq.X
frequency.BodyAccelerometer.meanFreq.Y
frequency.BodyAccelerometer.meanFreq.Z
frequency.BodyAccelerometer.Jerk.mean.X
frequency.BodyAccelerometer.Jerk.mean.Y
frequency.BodyAccelerometer.Jerk.mean.Z
frequency.BodyAccelerometer.Jerk.meanFreq.X
frequency.BodyAccelerometer.Jerk.meanFreq.Y
frequency.BodyAccelerometer.Jerk.meanFreq.Z
frequency.BodyGyro.mean.X
frequency.BodyGyro.mean.Y
frequency.BodyGyro.mean.Z
frequency.BodyGyro.meanFreq.X
frequency.BodyGyro.meanFreq.Y
frequency.BodyGyro.meanFreq.Z
frequency.BodyAccelerometer.Mag.mean
frequency.BodyAccelerometer.Mag.meanFreq
frequency.Body.AccJerkMag.mean
frequency.Body.AccJerkMag.meanFreq
frequency.Body.GyroMag.mean
frequency.Body.GyroMag.meanFreq
frequency.Body.GyroJerkMag.mean
frequency.Body.GyroJerkMag.meanFreq
time.BodyAccelerometer.std.X
time.BodyAccelerometer.std.Y
time.BodyAccelerometer.std.Z
time.GravityAccelerometer.std.X
time.GravityAccelerometer.std.Y
time.GravityAccelerometer.std.Z
time.BodyAccelerometer.Jerk.std.X
time.BodyAccelerometer.Jerk.std.Y
time.BodyAccelerometer.Jerk.std.Z
time.BodyGyro.std.X
time.BodyGyro.std.Y
time.BodyGyro.std.Z
time.BodyGyro.Jerk.std.X
time.BodyGyro.Jerk.std.Y
time.BodyGyro.Jerk.std.Z
time.BodyAccelerometer.Mag.std
time.GravityAccelerometer.Mag.std
time.BodyAccelerometer.JerkMag.std
time.BodyGyro.Mag.std
time.BodyGyro.JerkMag.std
frequency.BodyAccelerometer.std.X
frequency.BodyAccelerometer.std.Y
frequency.BodyAccelerometer.std.Z
frequency.BodyAccelerometer.Jerk.std.X
frequency.BodyAccelerometer.Jerk.std.Y
frequency.BodyAccelerometer.Jerk.std.Z
frequency.BodyGyro.std.X
frequency.BodyGyro.std.Y
frequency.BodyGyro.std.Z
frequency.BodyAccelerometer.Mag.std
frequency.Body.AccJerkMag.std
frequency.Body.GyroMag.std
frequency.Body.GyroJerkMag.std
```
