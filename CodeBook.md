#  RECORDS AND ASSOCIATED FILES
## RECORD
1. triaxial accel. (total, body)
2. triaxial angular velocity
3. 561-feature time & freq.
4. activity label
5. subject-id

## FILES
### TEST DATA
* y_test: 2947 rows of activity labels #4
* X_test: 2947 rows of 8977 characters length of 561-feature-vector #3
* subject_test: 2947 rows of subject ids #5
* InterialSignals/total_acc_x/y/z_test: #1a
* InterialSignals/body_acc_x/y/z_test: #1b
* InterialSignals/body_gyro_x/y/z_test: #2

### TRAIN DATA
* y_train: 7352 rows of activity labels #4
* X_train: 7352 rows of 8977 characters length of 561-feature-vector #3
* subject_train: 7352 rows of subject ids #5
* InterialSignals/total_acc_x/y/z_train: #1a
* InterialSignals/body_acc_x/y/z_train: #1b
* InterialSignals/body_gyro_x/y/z_train: #2

## VARIABLES IN MERGED DATASET
### Column(s), Description
* 1-561, time & freq. domain variables
* 562, activity label
* 563, subject id
* 564-691, body acceleration in x-axis
* 692-819, body acceleration in y-axis
* 820-947, body acceleration in z-axis
* 948-1075, total acceleration in x-axis
* 1076-1203, total acceleration in y-axis
* 1204-1331, total acceleration in z-axis
* 1332-1459, angular velocity from gyroscope in x-axis
* 1460-1587, angular velocity from gyroscope in y-axis
* 1588-1715, angular velocity from gyroscope in z-axis

## MEAN VARIABLES
### Column Index, Variable
* 1 tBodyAcc-mean()-X
* 2 tBodyAcc-mean()-Y
* 3 tBodyAcc-mean()-Z
* 81 tBodyAccJerk-mean()-X
* 82 tBodyAccJerk-mean()-Y
* 83 tBodyAccJerk-mean()-Z
* 121 tBodyGyro-mean()-X
* 122 tBodyGyro-mean()-Y
* 123 tBodyGyro-mean()-Z
* 161 tBodyGyroJerk-mean()-X
* 162 tBodyGyroJerk-mean()-Y
* 163 tBodyGyroJerk-mean()-Z
* 201 tBodyAccMag-mean()
* 227 tBodyAccJerkMag-mean()
* 240 tBodyGyroMag-mean()
* 253 tBodyGyroJerkMag-mean()
* 266 fBodyAcc-mean()-X
* 267 fBodyAcc-mean()-Y
* 268 fBodyAcc-mean()-Z
* 345 fBodyAccJerk-mean()-X
* 346 fBodyAccJerk-mean()-Y
* 347 fBodyAccJerk-mean()-Z
* 424 fBodyGyro-mean()-X
* 425 fBodyGyro-mean()-Y
* 426 fBodyGyro-mean()-Z
* 503 fBodyAccMag-mean()
* 516 fBodyBodyAccJerkMag-mean()
* 529 fBodyBodyGyroMag-mean()
* 542 fBodyBodyGyroJerkMag-mean()

## SD VARIABLES
### Column Index, Variable
* 4 tBodyAcc-std()-X
* 5 tBodyAcc-std()-Y
* 6 tBodyAcc-std()-Z
* 44 tGravityAcc-std()-X
* 45 tGravityAcc-std()-Y
* 46 tGravityAcc-std()-Z
* 84 tBodyAccJerk-std()-X
* 85 tBodyAccJerk-std()-Y
* 86 tBodyAccJerk-std()-Z
* 124 tBodyGyro-std()-X
* 125 tBodyGyro-std()-Y
* 126 tBodyGyro-std()-Z
* 164 tBodyGyroJerk-std()-X
* 165 tBodyGyroJerk-std()-Y
* 166 tBodyGyroJerk-std()-Z
* 202 tBodyAccMag-std()
* 228 tBodyAccJerkMag-std()
* 254 tBodyGyroJerkMag-std()
* 269 fBodyAcc-std()-X
* 270 fBodyAcc-std()-Y
* 271 fBodyAcc-std()-Z
* 348 fBodyAccJerk-std()-X
* 349 fBodyAccJerk-std()-Y
* 350 fBodyAccJerk-std()-Z
* 427 fBodyGyro-std()-X
* 428 fBodyGyro-std()-Y
* 429 fBodyGyro-std()-Z
* 504 fBodyAccMag-std()
* 517 fBodyBodyAccJerkMag-std()
* 530 fBodyBodyGyroMag-std()
* 543 fBodyBodyGyroJerkMag-std()

## MODIFIED COLUMN NAMES
NOTE: All feature column names were modified to reflect feature attributes
