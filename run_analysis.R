getTableFeatures <-function(){
  fileFeatures <- "UCI HAR Dataset/features.txt"
  dataTableFeatures <-read.table(fileFeatures)
  dtFeatures <- tbl_df(dataTableFeatures)
  dtFeatures
}

getTableActivityLabels <-function(){
  fileActivityLabels <- "UCI HAR Dataset/activity_labels.txt"
  dataTableFeatures <-read.table(fileActivityLabels)
  dtActivityLabels <- tbl_df(dataTableFeatures)
  dtActivityLabels
}

##bind test measurement to activity and subject
getTestTable <-function(){
  
  print("getting test data...")
  fileXTest <- "UCI HAR Dataset/test/X_test.txt"
  dataTableXTest <-read.table(fileXTest)
  
  fileYTest <- "UCI HAR Dataset/test/y_test.txt"
  dataTableYTest <-read.table(fileYTest)
  
  fileSubjectTest <- "UCI HAR Dataset/test/subject_test.txt"
  dataTableSubjectTest <-read.table(fileSubjectTest)
  
  outTable <- data.frame(dataTableXTest,dataTableYTest,dataTableSubjectTest)
  print("test data:")
  print(dim(outTable)) 
  outTable
}

##bind train measurement to activity and subject
getTrainTable <-function(){
  
  print("getting train data...")
  fileXTrain <- "UCI HAR Dataset/train/X_train.txt"
  dataTableXTrain <-read.table(fileXTrain)
 
  fileYTrain <- "UCI HAR Dataset/train/y_train.txt"
  dataTableYTrain <-read.table(fileYTrain)
  
  fileSubjectTrain <- "UCI HAR Dataset/train/subject_train.txt"
  dataTableSubjectTrain <-read.table(fileSubjectTrain)
  
  outTable <- data.frame(dataTableXTrain,dataTableYTrain,dataTableSubjectTrain)
  print("train data:")
  print(dim(outTable)) 
  outTable
}

getMergedDatasets <-function(){
  
  ## Merges the training and the test sets to create one data set (Part 1)
  testTable<-getTestTable()
  trainTable<-getTrainTable()
  bTable <- rbind(testTable,trainTable)
  
  ##get a vector of all variable names
  tbFeatures<-getTableFeatures()
  vFeatures<-collect(select(tbFeatures,2))[[1]]
  
  ##create a vector and set the column names to the merged table
  tableColumnNames<- factor(append(as.character(vFeatures),c("activity","subject")))
  colnames(bTable)<-tableColumnNames
  
  ##Extracts only the measurements on the mean and standard deviation for each measurement (Part 2)
  FileteredTable<-bTable[,grep('^subject|^activity|std\\(\\)|mean\\(\\)',names(bTable))]

  ##Uses descriptive activity names to name the activities in the data set (part 3)
  actTable<-getTableActivityLabels()
  actColnames<-c('activity','activityName')
  colnames(actTable)<-actColnames
  tb<-arrange(inner_join(FileteredTable, actTable))
  
  ##Appropriately labels the data set with descriptive variable names (part 4)
  oldNames<-names(tb)
  newNames<-gsub("-","",oldNames)
  newNames<-gsub("\\(\\)","",newNames)
  newNames<-gsub("mean","Mean",newNames)
  newNames<-gsub("std","Std",newNames)
  newNames<-gsub("^t","time",newNames)
  newNames<-gsub("^f","freq",newNames)
  colnames(tb)<-newNames
  tb
} 

## Create a tidy dataset "TidyDataset1.txt" (part 1,2,3,4)
## Create a second tidy dataset "TidyDataset2.txt" (part 5)
run_analysis<-function(){
  library(dplyr)
  tb<-getMergedDatasets()
  write.table(select(tb,subject,activityName,timeBodyAccMeanX:freqBodyBodyGyroJerkMagStd), "TidyDataset1.txt", sep="\t", row.name=FALSE, quote=FALSE)
  print("tidy dataset created: TidyDataset1.txt")
  ## From the data set in step 4, creates a second, 
  ## independent tidy data set with the average of each variable for each activity and each subject.(part 5)
  tbBySubjectActivity<-group_by(select(tb,-activity),subject,activityName)
  sumActSub<-summarise_each(tbBySubjectActivity,funs(mean))
  write.table(sumActSub, "TidyDataset2.txt", sep="\t", row.name=FALSE, quote=FALSE)
  print("tidy dataset created: TidyDataset2.txt")
  sumActSub
}

run_analysis()

