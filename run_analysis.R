
test <- read.table("./R/UCI HAR Dataset/test/X_test.txt")
# loaded 2947 obs, 561 vars. 

train <- read.table("./R/UCI HAR Dataset/train/X_train.txt")
# 7352 obs, 561 vars. 

# merge test and train sets (simple rbind, since their columns are identical)
merged <- rbind(test,train)

# load list of features. We will use these as column names for Merged df. 
features <- read.table("./R/UCI HAR Dataset/features.txt")

# Set column names for Merged from the values of all rows in the second column of Features. (First column is index).
colnames(merged) <- features[,2]

#######################################################
#### only retain columns that are mean or stdev ("Extracts only the measurements on the mean and standard deviation for each measurement.")
#######################################################

# get the column indices for column with 'mean' or 'std' in name
mean_std <- c(grep("mean",colnames(merged)),grep("std",colnames(merged)))

# subset the data frame to only include those columns. (could have also used dplyr, select(merged,contains...))
merged <- merged[,mean_std]
# Merged was cut from 561 to 79 vars.

#######################################################
##### "Uses descriptive activity names to name the activities in the data set"
#######################################################

# load the activity labels 
y_test <- read.table("./R/UCI HAR Dataset/test/y_test.txt")
y_train <- read.table("./R/UCI HAR Dataset/train/y_train.txt")

# bind them, in the same order we previously bonded the datasets, to ensure consistency.
activities <- rbind(y_test,y_train)

#loading plyr to use mapvalues (could also use revalue)
library(plyr)

colnames(activities) <- "activity"
activities$activity <- mapvalues(activities$activity, from=c("1","2","3","4","5","6"), to=c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

# Add "activity" as the first column in Merged  
merged <- cbind(activities,merged)

#######################################################
#### "From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject."
#######################################################

# we need to import the subject labels as well:
sub_test <- read.table("./R/UCI HAR Dataset/test/subject_test.txt")
sub_train <- read.table("./R/UCI HAR Dataset/train/subject_train.txt")

# bind them, in the same order we previously bonded datasets and activities, to ensure consistency.
subjects <- rbind(sub_test,sub_train)
colnames(subjects)<- "subject"

# add subjects as column to Merged:
merged <- cbind(subjects,merged)

# create the new data set. Since there are 30 subjects and 6 activities, we should get 180 records.
tidy <- merged %>% group_by(subject,activity) %>% summarize_each(funs(mean))

# write Tidy to a file, to upload
write.table(tidy,file="tidy.txt",row.names = FALSE)