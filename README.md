# Coursera - Getting And Cleaning Data - Peer Assignment
##script for peer assignment

The script "run_analysis.R" performs all required steps and creates 2 files: TidyDataset1.txt and TidyDataset2.txt using provided project data (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Run the script (set the R workspace) to folder where provided project data are estracted (in the workspace must be present the folder "UCI HAR Dataset"). 
The dataset files will be created in the workspace directory.

In the script there are these functions: 
* getTableFeatures(): reads data from features.txt
* getTableActivityLabels(): reads data from activity_labels.txt
* getTestTable(): reads data from X_test.txt, y_test.txt, subject_test.txt and binding to create test set
* getTrainTable(): reads data from X_train.txt, y_train.txt, subject_train.txt and binding to create train set
* getMergedDatasets(): merges "test" and "training" sets to create one dataset, renames the columns of datatable, extracts only measurements on the mean and standard deviation
* run_analysis(): performs the analysis and creates the 2 output files
