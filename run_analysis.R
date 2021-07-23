# Getting and Cleaning Data

# Final assignment

# load libraries
library(dplyr) 


##########################################################################
# 1. Merge the training and the test sets to create one data set.
##########################################################################

# set dataset directory
setwd("my_path/UCI HAR Dataset")

# read train data 
x_train       <- read.table("./train/X_train.txt")
y_train       <- read.table("./train/y_train.txt") 
subject_train <- read.table("./train/subject_train.txt")

# read test data 
x_test       <- read.table("./test/X_test.txt")
y_test       <- read.table("./test/y_test.txt") 
subject_test <- read.table("./test/subject_test.txt")

# read features description 
features <- read.table("./features.txt") 

# read activity labels 
activity_labels <- read.table("./activity_labels.txt") 

# concatenate individual data tables to make single data table
total <- rbind(
  cbind(subject_train, x_train, y_train),
  cbind(subject_test, x_test, y_test)
)

# assign column names
colnames(total) <- c("subject", features[, 2], "activity")

# check
str(total)


#############################################################################################
# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
#############################################################################################

# determine columns of data set to keep based on column name...
sel_columns <- grepl("subject|activity|mean|std", colnames(total))

# ... and keep data in these columns only
total <- total[, sel_columns]


######################################################################################
# 3. Use descriptive activity names to name the activities in the data set.
######################################################################################

# replace activity values with named factor levels
total$activity <- factor(total$activity, levels = activity_labels[, 1], labels = activity_labels[, 2])
table(total$activity)

######################################################################################
# 4. Appropriately label the data set with descriptive variable names. 
######################################################################################

# get column names
totalCols <- colnames(total)

# remove special characters
totalCols <- gsub("[\\(\\)-]", "", totalCols)

# expand abbreviations and clean up names
totalCols <- gsub("^f", "frequencyDomain", totalCols)
totalCols <- gsub("^t", "timeDomain", totalCols)
totalCols <- gsub("Acc", "Accelerometer", totalCols)
totalCols <- gsub("Gyro", "Gyroscope", totalCols)
totalCols <- gsub("Mag", "Magnitude", totalCols)
totalCols <- gsub("Freq", "Frequency", totalCols)
totalCols <- gsub("mean", "Mean", totalCols)
totalCols <- gsub("std", "StandardDeviation", totalCols)

# correct typo
totalCols <- gsub("BodyBody", "Body", totalCols)

# use new labels as column names
colnames(total) <- totalCols


##################################################################################################
# 5. From the data set in step 4, create a second, independent tidy data set with the average 
#    of each variable for each activity and each subject.
##################################################################################################

# group by subject and activity and summarise using mean
total_mean <- total %>% 
  group_by(subject, activity) %>%
  summarize_all(funs(mean))

# output to file "tidy_data.txt"
write.table(total_mean, file = "tidy_data.txt", row.names = FALSE, quote = FALSE)

