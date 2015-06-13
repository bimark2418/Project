# CodeBook
The source data is the Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The age of the 30 subjects used for the experiments range from  19 to 48 years. Each subject performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity metrics were capture at a constant rate of 50Hz. The experiments were video-recorded to label the data manually, a video showing a typical recording session can be found in https://www.youtube.com/watch?v=XOEN9W05_4A


The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.



The run_analysis.R script performs the following tasks:

  - Combines the training and the test sets to create one data set.
  
  - Extracts only the measurements on the mean and standard deviation for each measurement. 
  
  - Uses descriptive activity names to name the activities in the data set (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
  
  - Appropriately labels the data set with descriptive variable names. 
  
  - Gets the average of each variable for each activity and each subject.



Here is a list of the variables in tidyData.txt:
  
  - subjectID: Id  of the subject performing the activity

  - activityID: Id of Activity

  - tBodyAcc-mean()-X : mean body acceleration X- axis

  - tBodyAcc-mean()-Y: mean body acceleration Y- axis
  
  - tBodyAcc-mean()-Z: mean body acceleration Z- axis
  
  - tBodyAcc-std()-X : standard deviation body acceleration X- axis
  
  - tBodyAcc-std()-Y : standard deviation body acceleration Y- axis
  
  - tBodyAcc-std()-Z: standard deviation body acceleration Z- axis
  
  - tGravityAcc-mean()-X: mean gravity acceleration X- axis
  
  - tGravityAcc-mean()-Y: mean gravity acceleration Y- axis
  
  - tGravityAcc-mean()-Z: mean gravity acceleration Z- axis
  
  - tGravityAcc-std()-X: standard deviation gravity acceleration X- axis
  
  - tGravityAcc-std()-Y: standard deviation gravity acceleration Y- axis
  
  - tGravityAcc-std()-Z: standard deviation gravity acceleration Z- axis
  
  - tBodyAccJerk-mean()-X: mean body linear acceleration Jerk signal X- axis
  
  - tBodyAccJerk-mean()-Y: mean body linear acceleration Jerk signal Y axis
  
  - tBodyAccJerk-mean()-Z: mean body linear acceleration Jerk signal Z- axis
  
  - tBodyAccJerk-std()-X: standard deviation body linear acceleration Jerk signal X- axis
  
  - tBodyAccJerk-std()-Y: standard deviation body linear acceleration Jerk signal Y- axis
  
  - tBodyAccJerk-std()-Z: standard deviation body linear acceleration Jerk signal Z- axis
  
  - tBodyGyro-mean()-X: mean angular velocity X- axis
  
  - tBodyGyro-mean()-Y: mean angular velocity Y axis
  
  - tBodyGyro-mean()-Z: mean angular velocity Z- axis
  
  - tBodyGyro-std()-X: standard deviation angular velocity X- axis
  
  - tBodyGyro-std()-Y: standard deviation angular velocity Y- axis
  
  - tBodyGyro-std()-Z: standard deviation angular velocity Z- axis
  
  - tBodyGyroJerk-mean()-X: mean angular velocity Jerk signal X- axis
  
  - tBodyGyroJerk-mean()-Y: mean angular velocity Jerk signal Y- axis
  
  - tBodyGyroJerk-mean()-Z: mean angular velocity Jerk signal Z- axis
  
  - tBodyGyroJerk-std()-X: standard deviation angular velocity Jerk signal X- axis
  
  - tBodyGyroJerk-std()-Y: standard deviation angular velocity Jerk signal Y- axis
  
  - tBodyGyroJerk-std()-Z: standard deviation angular velocity Jerk signal Z- axis
  
  - tBodyAccMag-mean(): mean body acceleration Magnitude (Euclidean norm)
  
  - tBodyAccMag-std(): standar deviation body acceleration Magnitude (Euclidean norm)
  
  - tGravityAccMag-mean(): mean gravity acceleration Magnitude (Euclidean norm)
  
  - tGravityAccMag-std(): standard deviation gravity acceleration Magnitude (Euclidean norm)
  
  - tBodyAccJerkMag-mean(): mean body acceleration Jerk Magnitude (Euclidean norm)
  
  - tBodyAccJerkMag-std(): standard deviation body acceleration Jerk Magnitude (Euclidean norm)
  
  - tBodyGyroMag-mean(): mean angular velocity Magnitude (Euclidean norm)
  
  - tBodyGyroMag-std(): standard deviation angular velocity Magnitude (Euclidean norm)
  
  - tBodyGyroJerkMag-mean(): mean angular velocity Jerk Magnitude (Euclidean norm)
  
  - tBodyGyroJerkMag-std(): standard deviation angular velocity Jerk Magnitude (Euclidean norm)
  
  - fBodyAcc-mean()-X: mean body acceleration X- axis (Fourier Transform)
  
  - fBodyAcc-mean()-Y: mean body acceleration Y- axis (Fourier Transform)
  
  - fBodyAcc-mean()-Z: mean body acceleration Z- axis (Fourier Transform)
  
  - fBodyAcc-std()-X: standard deviation body acceleration X- axis (Fourier Transform)
  
  - fBodyAcc-std()-Y: standard deviation body acceleration Y- axis (Fourier Transform)
  
  - fBodyAcc-std()-Z: standard deviation body acceleration Z- axis (Fourier Transform)
  
  - fBodyAcc-meanFreq()-X: mean frequency body acceleration X- axis (Fourier Transform)
  
  - fBodyAcc-meanFreq()-Y: mean frequency body acceleration Y- axis (Fourier Transform)
  
  - fBodyAcc-meanFreq()-Z: mean frequency body acceleration Z- axis (Fourier Transform)
  
  - fBodyAccJerk-mean()-X: mean body acceleration Jerk signal X- axis (Fourier Transform)
  
  - fBodyAccJerk-mean()-Y: mean body acceleration Jerk signal Y- axis (Fourier Transform)
  
  - fBodyAccJerk-mean()-Z: mean body acceleration Jerk signal Z- axis (Fourier Transform)
  
  - fBodyAccJerk-std()-X: standard deviation body acceleration Jerk signal X- axis (Fourier Transform)
  
  - fBodyAccJerk-std()-Y: standard deviation body acceleration Jerk signal Y- axis (Fourier Transform)
  
  - fBodyAccJerk-std()-Z: standard deviation body acceleration Jerk signal Z- axis (Fourier Transform)
  
  - fBodyAccJerk-meanFreq()-X: mean frequency body acceleration Jerk signal X- axis (Fourier Transform)
  
  - fBodyAccJerk-meanFreq()-Y: mean frequency body acceleration Jerk signal Y- axis (Fourier Transform)
  
  - fBodyAccJerk-meanFreq()-Z: mean frequency body acceleration Jerk signal Z- axis (Fourier Transform)
  
  - fBodyGyro-mean()-X: mean angular velocity X- axis (Fourier Transform)
  
  - fBodyGyro-mean()-Y: mean angular velocity Y- axis (Fourier Transform)
  
  - fBodyGyro-mean()-Z: mean angular velocity Z- axis (Fourier Transform)
  
  - fBodyGyro-std()-X: standard deviation angular velocity X- axis (Fourier Transform)

  - fBodyGyro-std()-Y: standard deviation angular velocity Y- axis (Fourier Transform)
  
  - fBodyGyro-std()-Z: standard deviation angular velocity Z- axis (Fourier Transform)
  
  - fBodyGyro-meanFreq()-X: mean frequency angular velocity X- axis (Fourier Transform)
  
  - fBodyGyro-meanFreq()-Y: mean frequency angular velocity Y- axis (Fourier Transform)
  
  - fBodyGyro-meanFreq()-Z: mean frequency angular velocity Z- axis (Fourier Transform)
  
  - fBodyAccMag-mean(): mean body acceleration Magnitude (Euclidean norm) (Fourier Transform)
  
  - fBodyAccMag-std(): standard deviation body acceleration Magnitude (Euclidean norm) (Fourier Transform)
  
  - fBodyAccMag-meanFreq(): mean frequency body acceleration Magnitude (Euclidean norm) (Fourier Transform)
  
  - fBodyBodyAccJerkMag-mean(): mean body acceleration Jerk Magnitude (Euclidean norm) (Fourier Transform)
  
  - fBodyBodyAccJerkMag-std(): standard deviation body acceleration Jerk Magnitude (Euclidean norm) (Fourier Transform)
  
  - fBodyBodyAccJerkMag-meanFreq(): mean frequency body acceleration Jerk Magnitude (Euclidean norm) (Fourier Transform)
  
  - fBodyBodyGyroMag-mean(): mean angular velocity Magnitude (Euclidean norm) (Fourier Transform)
  
  - fBodyBodyGyroMag-std(): standard deviation angular velocity Magnitude (Euclidean norm) (Fourier Transform)
  
  - fBodyBodyGyroMag-meanFreq(): mean frequency angular velocity Magnitude (Euclidean norm) (Fourier Transform)
  
  - fBodyBodyGyroJerkMag-mean(): mean angular velocity Jerk Magnitude (Euclidean norm) (Fourier Transform)
  
  - fBodyBodyGyroJerkMag-std(): standard deviation angular velocity Jerk  Magnitude (Euclidean norm) (Fourier Transform)
  
  - fBodyBodyGyroJerkMag-meanFreq(): mean frequency angular velocity Jerk Magnitude (Euclidean norm) (Fourier Transform)

