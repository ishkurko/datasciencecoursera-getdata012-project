## 
getdata012.run <- function(offline = TRUE) {
  f <- "getdata-projectfiles-UCI HAR Dataset.zip"
  if (!offline) getdata012.download(f)
  if (!file.exists("UCI HAR Dataset")) unzip(f, overwrite = TRUE)
  x <- getdata012.read()
  x <- getdata012.select(x)
  x <- getdata012.activity(x)
  y <- getdata012.group(x)
  write.table(y, "tidy_data.txt", row.name = FALSE)
  y
}

getdata012.download <- function(f) {
  u <- url("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
  f <- "getdata-projectfiles-UCI HAR Dataset.zip"
  download.file(u, f, method = "curl")
}

getdata012.read <- function() {
  features <- read.table("./UCI HAR Dataset/features.txt")
  xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
  yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
  subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
  xTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
  yTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
  subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
  
  train <- cbind(subjectTrain, yTrain, xTrain)
  test <- cbind(subjectTest, yTest, xTest)
  
  x <- rbind(train, test)
  colnames(x)[1] <- "subject"
  colnames(x)[2] <- "activity"
  colnames(x)[3:563] <- make.names(names = as.vector(features[,2]), unique=TRUE, allow_ = TRUE)
  x
}

getdata012.select <- function(x) {
  require(dplyr)
  x %>% 
    select(subject, activity, contains("mean."), contains("std."))
}

getdata012.activity <- function(x) {
  activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
  require(dplyr)
  x %>%
    mutate(activity = as.factor(activityLabels[activity, 2]))
}

getdata012.group <- function(x) {
  require(dplyr)
  x <- x %>%
    group_by(subject, activity) %>%
    summarise_each(funs(mean))
  x
}