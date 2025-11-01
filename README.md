Background of data:
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Work for this assignment:
In this assignment I have downloaded the zip folder from the internet link provided, unzipped it and have read to files into R as text files. I have merged the test and train files for each of the following variables: Subject, Activity, BODY_ACC_X, BODY_ACC_Y, BODY_ACC_Z, BODY_GYRO_X, BODY_GYRO_Y, BODY_GYRO_Z, TOTAL_ACC_X, TOTAL_ACC_Y, and TOTAL_ACC_Z (please refer to the saved code book for description of the variable names). I have then combined these data by using rbind so that the final dataset has a total of 11 variables and 10299 observations (each subject has more than 1 value recorded, so the data are in longitudinal format. Finally, I have arranged the dataset by Subject and Activity and have save the data as a text file (see uploaded TidyDATA.txt).
