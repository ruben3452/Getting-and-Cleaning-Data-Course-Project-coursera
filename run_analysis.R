if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")

unzip(zipfile="./data/Dataset.zip",exdir="./data")

path_rf <- file.path("./data" , "UCI HAR Dataset")
files<-list.files(path_rf, recursive=TRUE)
files

datoTestAct  <- read.table(file.path(path_rf, "test" , "Y_test.txt" ),header = FALSE)
datoTrainAct <- read.table(file.path(path_rf, "train", "Y_train.txt"),header = FALSE)

datoTrainSub <- read.table(file.path(path_rf, "train", "subject_train.txt"),header = FALSE)
datoTestSub  <- read.table(file.path(path_rf, "test" , "subject_test.txt"),header = FALSE)

datoTestF  <- read.table(file.path(path_rf, "test" , "X_test.txt" ),header = FALSE)
datoTrainF <- read.table(file.path(path_rf, "train", "X_train.txt"),header = FALSE)

str(datoTestAct)
str(datoTrainAct)
str(datoTestSub)
str(datoTrainSub)
str(datoTestF)
str(datoTrainF)

## Merges the training and the test sets to create one data set.

datoSub <- rbind(datoTrainSub, datoTestSub)
datoAct<- rbind(datoTrainAct, datoTestAct)
datoF<- rbind(datoTrainF, datoTestF)

names(datoSub)<-c("subject")
names(datoAct)<- c("activity")
datoFNames <- read.table(file.path(path_rf, "features.txt"),head=FALSE)
names(datoF)<- datoFNames$V2

datoCombi <- cbind(datoSub, datoAct)
Dato <- cbind(datoF, datoCombi)

## Extracts only the measurements on the mean and standard deviation for each measurement. 

subdatoFNames<-datoFNames$V2[grep("mean\\(\\)|std\\(\\)", datoFNames$V2)]

selecNames<-c(as.character(subdatoFNames), "subject", "activity" )
Dato<-subset(Dato,select=selecNames)

str(Dato)

## Uses descriptive activity names to name the activities in the data set

activityLabels <- read.table(file.path(path_rf, "activity_labels.txt"),header = FALSE)

head(Dato$activity,30)


## Appropriately labels the data set with descriptive variable names. 

names(Dato)<-gsub("^t", "time", names(Dato))
names(Dato)<-gsub("^f", "frequency", names(Dato))
names(Dato)<-gsub("Acc", "Accelerometer", names(Dato))
names(Dato)<-gsub("Gyro", "Gyroscope", names(Dato))
names(Dato)<-gsub("Mag", "Magnitude", names(Dato))
names(Dato)<-gsub("BodyBody", "Body", names(Dato))

names(Dato)

library(plyr);
Dato<-aggregate(. ~subject + activity, Dato, mean)
Dato<-Dato[order(Dato$subject,Dato$activity),]
write.table(Dato, file = "datox.txt",row.name=FALSE)

library(knitr)
knit2html("codebook.Rmd")