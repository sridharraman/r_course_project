#  UNDERSTANDING RECORDS AND ASSOCIATED FILES
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
