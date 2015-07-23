
## Run Analysis Code Book

This codebook describe structure of data frame outputed by functions **createTidyData** and **averageTidyData** from [run_analysis.R](run_analysis.R) source.

###The data frame contains the following columns:

#### Identification
 -  **subject**
 
      Number of the subject from which measurements of this row are made.
  
 -  **activity**
 
      Activity the subject was performing during the measurements of the row.
      
#### Measure values

##### Accelerometer
 -  **tBodyAcc_mean_X**, **tBodyAcc_mean_Y**, **tBodyAcc_mean_Z**
 
      Mean of the body part of accelerometer 3-axial signals
    
 -  **tBodyAcc_std_X**, **tBodyAcc_std_Y**, **tBodyAcc_std_Z**
 
      Standard deviation of the body part of accelerometer 3-axial signals
    
 -  **tGravityAcc_mean_X**, **tGravityAcc_mean_Y**, **tGravityAcc_mean_Z**
 
    Mean of the Gravity part of accelerometer 3-axial signals
    
 -  **tGravityAcc_std_X**, **tGravityAcc_std_Y**, **tGravityAcc_std_Z**
 
    Standard deviation of the Gravity part of accelerometer 3-axial signals
  
#### Accelerometer Jerk (for body part)
 -  **tBodyAccJerk_mean_X**, **tBodyAccJerk_mean_Y**, **tBodyAccJerk_mean_Z**
 
    Mean of the body part of accelerometer jerk 3-axial signals
    
 -  **tBodyAccJerk_std_X**, **tBodyAccJerk_std_Y**, **tBodyAccJerk_std_Z**
 
    Standard deviation of the body part of accelerometer jerk 3-axial signals

#### Accelerometer Magnitude
 -  **tBodyAccMag_mean_X**, **tBodyAccMag_mean_Y**, **tBodyAccMag_mean_Z**
 
    Mean of the magnitude of the body part of accelerometer 3-axial signals
    
 -  **tBodyAccMag_std_X**, **tBodyAccMag_std_Y**, **tBodyAccMag_std_Z**
 
    Standard deviation of the magnitude of the body part of accelerometer 3-axial signals
    
 -  **tGravityAccMag_mean_X**, **tGravityAccMag_mean_Y**, **tGravityAccMag_mean_Z**
 
    Mean of the magnitude of the Gravity part of accelerometer 3-axial signals
    
 -  **tGravityAccMag_std_X**, **tGravityAccMag_std_Y**, **tGravityAccMag_std_Z**
 
    Standard deviation of the magnitude of the Gravity part of accelerometer 3-axial signals

#### Accelerometer Jerk Magnitude
 -  **tBodyAccJerkMag_mean_X**, **tBodyAccJerkMag_mean_Y**, **tBodyAccJerkMag_mean_Z**
 
    Mean of the Magnitude of the body part of accelerometer jerk 3-axial signals
    
 -  **tBodyAccJerkMag_std_X**, **tBodyAccJerkMag_std_Y**, **tBodyAccJerkMag_std_Z**
 
    Standard deviation of the magnitude of the body part of accelerometer jerk 3-axial signals


#### Gyroscope
 -  **tBodyGyro_mean_X**, **tBodyGyro_mean_Y**, **tBodyGyro_mean_Z**
 
      Mean of the gyroscope 3-axial signals
    
 -  **tBodyGyro_std_X**, **tBodyGyro_std_Y**, **tBodyGyro_std_Z**
 
      Standard deviation of the gyroscope 3-axial signals

#### Gyroscope Jerk
 -  **tBodyGyroJerk_mean_X**, **tBodyGyroJerk_mean_Y**, **tBodyGyroJerk_mean_Z**
 
    Mean of the gyroscope jerk 3-axial signals
    
 -  **tBodyGyroJerk_std_X**, **tBodyGyroJerk_std_Y**, **tBodyAccJerk_std_Z**
 
    Standard deviation of the gyroscope jerk 3-axial signals

#### Gyroscope Magnitude
 -  **tBodyGyroMag_mean_X**, **tBodyGyroMag_mean_Y**, **tBodyGyroMag_mean_Z**
 
      Mean of the magnitude of the gyroscope 3-axial signals
    
 -  **tBodyGyroMag_std_X**, **tBodyGyroMag_std_Y**, **tBodyGyroMag_std_Z**
 
      Standard deviation of the magnitude of the gyroscope 3-axial signals

#### Gyroscope Jerk Magnitude
 -  **tBodyGyroJerkMag_mean_X**, **tBodyGyroJerkMag_mean_Y**, **tBodyGyroJerkMag_mean_Z**
 
    Mean of the magnitude of the gyroscope jerk 3-axial signals
    
 -  **tBodyGyroJerkMag_std_X**, **tBodyGyroJerkMag_std_Y**, **tBodyAccJerkMag_std_Z**
 
    Standard deviation of the magnitude of the gyroscope jerk 3-axial signals

#### Measure values with Fast Fourier Transform (FFT)

##### Accelerometer
 -  **fBodyAcc_mean_X**, **fBodyAcc_mean_Y**, **fBodyAcc_mean_Z**
 
      Mean of the body part of accelerometer 3-axial signals
    
 -  **fBodyAcc_std_X**, **fBodyAcc_std_Y**, **fBodyAcc_std_Z**
 
      Standard deviation of the body part of accelerometer 3-axial signals
    
#### Accelerometer Jerk (for body part)
 -  **fBodyAccJerk_mean_X**, **fBodyAccJerk_mean_Y**, **fBodyAccJerk_mean_Z**
 
    Mean of the body part of accelerometer jerk 3-axial signals
    
 -  **fBodyAccJerk_std_X**, **fBodyAccJerk_std_Y**, **fBodyAccJerk_std_Z**
 
    Standard deviation of the body part of accelerometer jerk 3-axial signals

#### Accelerometer Magnitude
 -  **fBodyAccMag_mean_X**, **fBodyAccMag_mean_Y**, **fBodyAccMag_mean_Z**
 
    Mean of the magnitude of the body part of accelerometer 3-axial signals
    
 -  **fBodyAccMag_std_X**, **fBodyAccMag_std_Y**, **fBodyAccMag_std_Z**
 
    Standard deviation of the magnitude of the body part of accelerometer 3-axial signals

#### Accelerometer Jerk Magnitude
 -  **fBodyAccJerkMag_mean_X**, **fBodyAccJerkMag_mean_Y**, **fBodyAccJerkMag_mean_Z**
 
    Mean of the Magnitude of the body part of accelerometer jerk 3-axial signals
    
 -  **fBodyAccJerkMag_std_X**, **fBodyAccJerkMag_std_Y**, **fBodyAccJerkMag_std_Z**
 
    Standard deviation of the magnitude of the body part of accelerometer jerk 3-axial signals


#### Gyroscope
 -  **fBodyGyro_mean_X**, **fBodyGyro_mean_Y**, **fBodyGyro_mean_Z**
 
      Mean of the gyroscope 3-axial signals
    
 -  **fBodyGyro_std_X**, **fBodyGyro_std_Y**, **fBodyGyro_std_Z**
 
      Standard deviation of the gyroscope 3-axial signals

#### Gyroscope Magnitude
 -  **fBodyGyroMag_mean_X**, **fBodyGyroMag_mean_Y**, **fBodyGyroMag_mean_Z**
 
      Mean of the magnitude of the gyroscope 3-axial signals
    
 -  **fBodyGyroMag_std_X**, **fBodyGyroMag_std_Y**, **fBodyGyroMag_std_Z**
 
      Standard deviation of the magnitude of the gyroscope 3-axial signals

#### Gyroscope Jerk Magnitude
 -  **fBodyGyroJerkMag_mean_X**, **fBodyGyroJerkMag_mean_Y**, **fBodyGyroJerkMag_mean_Z**
 
    Mean of the magnitude of the gyroscope jerk 3-axial signals
    
 -  **fBodyGyroJerkMag_std_X**, **fBodyGyroJerkMag_std_Y**, **fBodyAccJerkMag_std_Z**
 
    Standard deviation of the magnitude of the gyroscope jerk 3-axial signals

### Measurements Detail

From the original documentation: 

 > The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
 >
 > Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
 >
 > Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

To have more information, check the [website at UCI](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
