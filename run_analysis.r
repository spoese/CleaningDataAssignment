##fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
##download.file(fileUrl,destfile = "./CleanData.zip"); unzip("./CleanData.zip") 
##file.rename("UCI HAR Dataset","CleanData")
##activity_labels <- read.table("./CleanData/activity_labels.txt") #6 x 2
##subject_test <- read.table("./CleanData/test/subject_test.txt") #2947 x 1
##X_test <- read.table("./CleanData/test/X_test.txt") #2947 x 561
##y_test <- read.table("./CleanData/test/y_test.txt") #2947 x 1
##subject_train <- read.table("./CleanData/train/subject_train.txt") #7352 x 1
##X_train <- read.table("./CleanData/train/X_train.txt") #7352 x 561
##y_train <- read.table("./CleanData/train/y_train.txt") #7352 x 1