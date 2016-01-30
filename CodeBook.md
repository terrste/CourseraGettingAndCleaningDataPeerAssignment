## Getting and Cleaning Data - peer assignment

#### Step to obtain the tidy dataset 1

1. Merge the training and the test sets to create one data set.
  * read data from X_test.txt, y_test.txt, subject_test.txt and binding to create test set
  * read data from X_train.txt, y_train.txt, subject_train.txt and binding to create train set
  * merge test and training sets to create one dataset 

2. Extract only the measurements on the mean and standard deviation for each measurement. 
  * read data from features.txt 
  * rename the columns of datatable
  * extract only measurements on the mean and standard deviation

3. Use descriptive activity names to name the activities in the data set
  * reading data from activity_labels.txt
  * join datatable and activity table 

4. Appropriately label the data set with descriptive activity names. 
  * rename the datatable column names (i.e: tBodyAcc-mean()-X -> timeBodyAccMeanX)

5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 
  * group data by activity and subject
  * summarise applying function mean()

The variables of the created dataset are a subset of the original datasets (features.txt), only measurements on the mean and standard deviation 

"subject"                     
"activityName"                
"timeBodyAccMeanX"            
"timeBodyAccMeanY"            
"timeBodyAccMeanZ"           
"timeBodyAccStdX"             
"timeBodyAccStdY"             
"timeBodyAccStdZ"             
"timeGravityAccMeanX"         
"timeGravityAccMeanY"        
"timeGravityAccMeanZ"         
"timeGravityAccStdX"          
"timeGravityAccStdY"          
"timeGravityAccStdZ"          
"timeBodyAccJerkMeanX"       
"timeBodyAccJerkMeanY"        
"timeBodyAccJerkMeanZ"        
"timeBodyAccJerkStdX"         
"timeBodyAccJerkStdY"         
"timeBodyAccJerkStdZ"        
"timeBodyGyroMeanX"           
"timeBodyGyroMeanY"           
"timeBodyGyroMeanZ"           
"timeBodyGyroStdX"            
"timeBodyGyroStdY"           
"timeBodyGyroStdZ"            
"timeBodyGyroJerkMeanX"       
"timeBodyGyroJerkMeanY"       
"timeBodyGyroJerkMeanZ"       
"timeBodyGyroJerkStdX"       
"timeBodyGyroJerkStdY"        
"timeBodyGyroJerkStdZ"        
"timeBodyAccMagMean"          
"timeBodyAccMagStd"           
"timeGravityAccMagMean"      
"timeGravityAccMagStd"        
"timeBodyAccJerkMagMean"      
"timeBodyAccJerkMagStd"       
"timeBodyGyroMagMean"         
"timeBodyGyroMagStd"         
"timeBodyGyroJerkMagMean"     
"timeBodyGyroJerkMagStd"      
"freqBodyAccMeanX"            
"freqBodyAccMeanY"            
"freqBodyAccMeanZ"           
"freqBodyAccStdX"             
"freqBodyAccStdY"             
"freqBodyAccStdZ"             
"freqBodyAccJerkMeanX"        
"freqBodyAccJerkMeanY"       
"freqBodyAccJerkMeanZ"        
"freqBodyAccJerkStdX"         
"freqBodyAccJerkStdY"         
"freqBodyAccJerkStdZ"         
"freqBodyGyroMeanX"          
"freqBodyGyroMeanY"           
"freqBodyGyroMeanZ"           
"freqBodyGyroStdX"            
"freqBodyGyroStdY"            
"freqBodyGyroStdZ"           
"freqBodyAccMagMean"          
"freqBodyAccMagStd"           
"freqBodyBodyAccJerkMagMean"  
"freqBodyBodyAccJerkMagStd"   
"freqBodyBodyGyroMagMean"    
"freqBodyBodyGyroMagStd"      
"freqBodyBodyGyroJerkMagMean" 
"freqBodyBodyGyroJerkMagStd" 
