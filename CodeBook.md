## Getting and Cleaning Data - peer assignment

## Step to obtain the tidy dataset 1

1. Merge the training and the test sets to create one data set.
1.1 read data from X_test.txt, y_test.txt, subject_test.txt and binding to create test set
1.2 read data from X_train.txt, y_train.txt, subject_train.txt and binding to create train set
1.3 merge test and training sets to create one dataset 

2. Extract only the measurements on the mean and standard deviation for each measurement. 
2.1 read data from features.txt 
2.2 rename the columns of datatable
2.3 extract only measurements on the mean and standard deviation

3. Use descriptive activity names to name the activities in the data set
3.1 reading data from activity_labels.txt
3.2 join datatable and activity table 

4. Appropriately label the data set with descriptive activity names. 
4.1 rename the datatable column names (i.e: tBodyAcc-mean()-X -> timeBodyAccMeanX)

5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 
5.1 group data by activity and subject
5.2 summarise applying function mean()

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