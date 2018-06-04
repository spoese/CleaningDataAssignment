##The following steps download the file, unzip the file, and read in the
##various data sets

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile = "./CleanData.zip"); unzip("./CleanData.zip") 
file.rename("UCI HAR Dataset","CleanData")
features <- read.table("./CleanData/features.txt") 
activity_labels <- read.table("./CleanData/activity_labels.txt") 
subject_test <- read.table("./CleanData/test/subject_test.txt") 
X_test <- read.table("./CleanData/test/X_test.txt") 
y_test <- read.table("./CleanData/test/y_test.txt")
subject_train <- read.table("./CleanData/train/subject_train.txt")
X_train <- read.table("./CleanData/train/X_train.txt")
y_train <- read.table("./CleanData/train/y_train.txt")

##Now we are looking to create one universal dataset.
test <- cbind(subject_test,y_test,X_test)
train <- cbind(subject_train,y_train,X_train)
data <- rbind(test,train)

##Trying to parse out only the mean and std of the measurements
mean_std_vars <- features[
        grepl("mean\\(\\)",features[,2]) | grepl("std\\(\\)",features[,2]),]
mean_std_data <- data[,c(1,2,mean_std_vars[,1]+2)] #Add 2 to account for the
#Subject and Activity columns.

##Using descriptive names to name the activities in the data set
mean_std_data[,2] <- sapply(mean_std_data[,2],function(x) activity_labels[x,2])

#Labeling data set with descriptive variable names
mean_std_vars[,2] <- gsub("\\(\\)","",mean_std_vars[,2]) #Clean up by removing ()
cnames <- c("Subject","Activity",mean_std_vars[,2])
colnames(mean_std_data) <- cnames

#Filtering down to only the averages
msd_melt <- melt(mean_std_data,id = c("Subject","Activity"))
msd_melt <- ddply(msd_melt,.(Subject,Activity,variable),summarize,
                  Averages = mean(value)) #This step takes a little time
colnames(msd_melt)[3] <- "Measurement" #Renaming 'variables' column

#Write out the result to a .txt file
write.table(msd_melt,"./TidyDataset.txt",quote=FALSE,row.names = FALSE)