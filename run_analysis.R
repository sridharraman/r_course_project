## Load test data and merge it
x_test_data <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test_data <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test_data <- read.table("UCI HAR Dataset/test/subject_test.txt")
body_acc_x_test_data <- read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")
body_acc_y_test_data <- read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
body_acc_z_test_data <- read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")
total_acc_x_test_data <- read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")
total_acc_y_test_data <- read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")
total_acc_z_test_data <- read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")
body_gyro_x_test_data <- read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")
body_gyro_y_test_data <- read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt")
body_gyro_z_test_data <- read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")

merged_test_data <- cbind(x_test_data, y_test_data, subject_test_data, body_acc_x_test_data, body_acc_y_test_data, 
                          body_acc_z_test_data, total_acc_x_test_data, total_acc_y_test_data, total_acc_z_test_data, 
                          body_gyro_x_test_data, body_gyro_x_test_data, body_gyro_z_test_data)

## Load train data and merge it
x_train_data <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train_data <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train_data <- read.table("UCI HAR Dataset/train/subject_train.txt")
body_acc_x_train_data <- read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt")
body_acc_y_train_data <- read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")
body_acc_z_train_data <- read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt")
total_acc_x_train_data <- read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt")
total_acc_y_train_data <- read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt")
total_acc_z_train_data <- read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")
body_gyro_x_train_data <- read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt")
body_gyro_y_train_data <- read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt")
body_gyro_z_train_data <- read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt")

merged_train_data <- cbind(x_train_data, y_train_data, subject_train_data, body_acc_x_train_data, body_acc_y_train_data, 
                           body_acc_z_train_data, total_acc_x_train_data, total_acc_y_train_data, total_acc_z_train_data, 
                           body_gyro_x_train_data, body_gyro_x_train_data, body_gyro_z_train_data)

## Merge test and train data
merged_data <- rbind(merged_test_data, merged_train_data)

## Extract mean and sd variables
mean_columns <- c(1, 2, 3, 81, 82, 83, 121, 122, 123, 161, 162, 163, 201, 227, 240, 253, 266, 267, 268, 345, 346,
                  347, 424, 425, 426, 503, 516, 529, 542)
sd_columns <- c(4, 5, 6, 44, 45, 46, 84, 85, 86, 124, 125, 126, 164, 165, 166, 202, 228, 254, 269, 270, 271, 348, 
                349, 350, 427, 428, 429, 504, 517, 530, 543)
extracted_data <- merged_data[, c(mean_columns, sd_columns, 562, 563)]

## Rename activity column values with name
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
for (i in activity_labels[, 1]) {
  extracted_data$V1.1[extracted_data$V1.1 == i] <- as.character(activity_labels[i, 2])
}

## Rename column names descriptively
# features
feature_names <- read.table("UCI HAR Dataset/features.txt")
for (i in feature_names[, 1]) {
  current_colname <- paste("V", i, sep = "")
  names(extracted_data)[names(extracted_data) == current_colname] <- as.character(feature_names[i, 2])
}

# activity, subject
names(extracted_data)[names(extracted_data) == "V1.1"] <- "activity"
names(extracted_data)[names(extracted_data) == "V1.2"] <- "subject"

## Create new tidy set with average of each feature variable for each activity and subject
tidy_dataset <- extracted_data %>% group_by(activity, subject) %>% summarise_each(funs(mean))
