Getting and Cleaning Data Course Project

-The data being processed was taken from the UCI HAR Dataset file. This data set provides the following variables with their respective names:
variable name sub 
variable name act 

-The following parameters were used for this research

subject" "activity 
timeBodyAccelerometer-mean()-XYZ 
timeBodyAccelerometer-std()-XYZ 
timeGravityAccelerometer-mean()-XYZ 
timeGravityAccelerometer-std()-XYZ  
timeBodyAccelerometerJerk-mean()-XYZ 
timeBodyAccelerometerJerk-std()-XYZ
timeBodyGyroscope-mean()-XYZ 
timeBodyGyroscope-std()-XYZ 
timeBodyGyroscopeJerk-mean()-XYZ 
timeBodyGyroscopeJerk-std()-XYZ  
timeBodyAccelerometerMagnitude-mean() 
timeBodyAccelerometerMagnitude-std() 
timeGravityAccelerometerMagnitude-mean() 
timeGravityAccelerometerMagnitude-std() 
timeBodyAccelerometerJerkMagnitude-mean() 
timeBodyAccelerometerJerkMagnitude-std() 
timeBodyGyroscopeMagnitude-mean() 
timeBodyGyroscopeMagnitude-std() 
timeBodyGyroscopeJerkMagnitude-mean() 
timeBodyGyroscopeJerkMagnitude-std() 
frequencyBodyAccelerometer-mean()-XYZ 
frequencyBodyAccelerometer-std()-XYZ 
frequencyBodyAccelerometerJerk-mean()-XYZ 
frequencyBodyAccelerometerJerk-std()-XYZ 
frequencyBodyGyroscope-mean()-XYZ 
frequencyBodyGyroscope-std()-XYZ 
frequencyBodyAccelerometerMagnitude-mean() 
frequencyBodyAccelerometerMagnitude-std() 
frequencyBodyAccelerometerJerkMagnitude-mean() 
frequencyBodyAccelerometerJerkMagnitude-std() 
frequencyBodyGyroscopeMagnitude-mean() 
frequencyBodyGyroscopeMagnitude-std() 
frequencyBodyGyroscopeJerkMagnitude-mean() 
frequencyBodyGyroscopeJerkMagnitude-std()

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 