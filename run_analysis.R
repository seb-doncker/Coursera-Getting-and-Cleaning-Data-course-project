## ------------------------------------------------------------------------------------
## createTidyData
##
## This function create a tidy data frame from the UCI HAR Dataset with only mean and 
## std variables from features.
##Test and training datasets are merged in result
##
## parameters:
##    directory : The directory containing the original UCI HAR Dataset files
##
## output:
##    Data frame with columns:
##       - subject:  the subject on which measurements are performed
##       - activity: the activity the subject is implicated at the moment of particular measure
##       - 79 others column of different measures (see codebook.md for column detailed description)
## ------------------------------------------------------------------------------------
createTidyData <- function(directory = "UCI HAR Dataset") {

  ## ------------------------------------------
  ## PREPARING GLOBAL DATA
  message("preparing global data")
  # --- Prepare Data to replace activity and feature names by descriptive names.
  activities <- read.delim(file.path(directory, "activity_labels.txt"), sep=" ", header= F, col.names=c("id", "name"))$name
  
  f <- read.delim(file.path(directory, "features.txt"), sep=" ", header= F, col.names=c("id", "name"), stringsAsFactors = F)$name
  features <- sapply(f, function(x) { gsub("[()]", "", gsub("-", "_", x)) }, USE.NAMES = F)
  
  # --- we keep only mean and std features
  wantedFeatures <- grepl(".*_(mean|std).*", features)
  
  # --- ordered column names
  columnNames <- c("subject", "activity", features[wantedFeatures])

  data <- list(
    activities = activities,
    features = features,
    wantedFeatures = wantedFeatures,
    columnNames = columnNames
  )
  
  ## ------------------------------------------
  ## READ TEST & TRAINING DATA THEN CONCATENATE
  message("read & treat test data set")
  test <- readSub(directory, "test", data)
  message("read & treat training data set")
  train <- readSub(directory, "train", data)
  message("concatenate two data sets")
  result <- rbind(test,train)
  message("data frame computed.")
  
  ## ------------------------------------------
  ## RETURN COMPLETE DATA SET
  result
}

## ------------------------------------------------------------------------------------
## averageTidyData
##
## This function create a tidy data frame from the one computed by createTidyData function.
## This new data frame will contains the mean of each features aggregated by subject and activity.
##
## parameters:
##    a : The data frame with the same structure than the one created by createTidyFrame
##        If a == NULL, this function call createTidyFrame itself.
##
## output:
##    Data frame with columns:
##       - subject:  the subject on which measurements are performed
##       - activity: the activity the subject is implicated at the moment of particular measure
##       - 79 others column: mean of each aggregated measures (see codebook.md for column detailed description)
## ------------------------------------------------------------------------------------
averageTidyData <- function(a = NULL) {
  # --- Create Tidy Data if not provided.
  if(is.null(a)) {
    a <- createTidyData()
  }
  
  message("compute aggregated means on data")
  # --- split the dataframe by subject and activity then apply mean on each sub data frame.
r <- sapply(split(a, list(a$subject, a$activity)), meanDF)
  # --- the resulting matrix is inverted so we transpose it (columns <--> rows) and convert it into data frame.
  df <- data.frame(t(r))
  # --- We remove names which are redundant with activity and subject columns.
  row.names(df) <- NULL
  # --- each column of df is a list. We unlist them to have a simpler data frame (with the exact same structure than a)
  df <- data.frame(lapply(df, unlist))
  
  message("aggregated means computed.")
  
  # --- return  the result data frame.
  df
}

## ------------------------------------------------------------------------------------
## readSub
##
## This function is used by createTidyData to read different sets of data.
## This function create part of the final result concerning a subset of data
##
## parameters:
##    directory : The directory containing the original UCI HAR Dataset files
##    type : The desired subset  ("test" or "train" for now)
##    data : A list of global data computing by createTiDyData once (list of columns, features, activities, ...)
##
## output:
##    Data frame with columns:
##       - subject:  the subject on which measurements are performed
##       - activity: the activity the subject is implicated at the moment of particular measure
##       - 79 others column of different measures (see codebook.md for column detailed description)
## ------------------------------------------------------------------------------------
readSub <- function(directory, type, data) {
  # --- subjects
  subject <- sapply(readLines(file.path(directory, type, paste("subject_", type, ".txt", sep=""))), as.numeric, USE.NAMES = F)
  # --- activities (read file then match the descriptive name with number)
  activity <- readLines(file.path(directory, type, paste("y_", type, ".txt", sep="")))
  descriptiveActivity <- sapply(activity, function(x) as.factor(data$activities[as.numeric(x)]))
  
  # --- read feature values
  values <- read.delim(file.path(directory, type, paste("X_", type, ".txt", sep="")), sep="", header= F, strip.white = T, col.names=data$features)[data$wantedFeatures]
  # --- complete features with activities & subjects
  values$subject <- subject
  values$activity <- descriptiveActivity
  # --- reorder columns to put subject & activities in first columns
  orderedValues <- values[,data$columnNames]
  
  # --- return final data frame
  orderedValues
}

## ------------------------------------------------------------------------------------
## meanDF
##
## This function is used by averageTidyData.
## This function compute the mean of each numeric columns of a dataframe. 
## for non numeric columns, the first value of the column is returned.
##
## parameters:
##    d: data frame to analyse
##
## output:
##    Data frame with columns:
##       - subject:  the subject on which measurements are performed
##       - activity: the activity the subject is implicated at the moment of particular measure
##       - 79 others column of different measures (see codebook.md for column detailed description)
## ------------------------------------------------------------------------------------
meanDF <- function(d) {
  lapply(d, function(x) {if(is.numeric(x)) mean(x) else x[1]})
}
