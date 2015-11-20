# r_course_project
This is part of the Course Project for the R course - Getting and Cleaning Data.

# steps in R script
## loading data
The script loads the test and train data from the various files and merges them using `cbind`.

## merging test and train data
The test and train data are merged using `rbind`.

## extracting mean and standard deviation values
From the merged dataset, the mean and sd column values are extracted by using the corresponding column indexes detailed in features.txt.

## renaming activity column values with labels
Using activity_labels.txt, the activity column values are modified from their integer factor value to the actual label.

## renaming column names descriptively
Using features.txt, all the time and frequency domain variables are renamed appropriately. Additionally, activity and subject column names are also modified to reflect their purpose.

## creating tidy dataset with average of each feature variable for each activity and subject
The extracted dataset is grouped by activity and subject and summarised using the average of each of the feature columns.
