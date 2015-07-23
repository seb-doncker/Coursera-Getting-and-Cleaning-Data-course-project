
## RUN ANALYSIS

This repository is the result of course projet from Coursera course: **Getting and Cleaning Data** from John Hopkins University: https://www.coursera.org/course/getdata

To execute this analysis, you should download the data about **Human Activity Recognition Using Smartphones** from UCI: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Installation

UCI Data should be unzipped in a sub folder of the working directory.


### Run

 Source the R file: **run_analysis.R**
 
#### To get whole tidy data
 To get the whole tidy data set (step 4 of the course project): 
 run function **createTidyData(d)** 
 (d should be the subfolder containing UCI data set)
 
#### To get tidy data set with averages
 
 To get the tidy data with the average by subject and activity (step 5 of the course project): 
 
 - If you use the default name for the UCI data set (*"UCI HAR Dataset"*): run function **averageTidyData()**
 - If you install UCI data set in another folder, you should run **averageTidyData(createTidyData("UCI data set folder name"))**

### Code Book

You can find the code book describing the resulting data frame here: [codebook.md](codebook.md)