Getting and Cleaning Data Course Project

this course project allows you to clean the data


- features.txt: are the descriptions of the measurements
- Values Varible datoAct consist of data from “Y_train.txt” and “Y_test.txt”
- values Varible datoSub consist of data from “subject_train.txt” and subject_test.txt"
- Values Varibles datoF consist of data from “X_train.txt” and “X_test.txt”
- Names  Varibles Features come from “features.txt”

The project include R script

1. download the link file and save it in the data folder, unzip the zip and the files are saved in the UCI HAR Datase folder
2. the names that are described in the activities of "activity_labels.txt" are read, the names that are described in the activities are read from "activity_labels.txt", the data is loaded into a variable that uses the names of the described activity, and parsed.
the data set is appropriately labeled with the names of the act and sub variables and is labeled with the name that describes it with its characteristic

-prefix t is replaced by time
-Acc is replaced by Accelerometer
-Gyro is replaced by Gyroscope
-prefix f is replaced by frequency
-Mag is replaced by Magnitude
-BodyBody is replaced by Body

3. A second set of ordered and independent data was created with the average of each variable for each variable act and sub based on the data set

