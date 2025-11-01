library(dplyr)
> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:
  
  filter, lag

The following objects are masked from ‘package:base’:
  
  intersect, setdiff, setequal, union
> subjects_test <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
> 
  > subjects_train <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
> 
  > SUBJECT <- bind_rows(subjects_test, subjects_train)
> 
  > SUBJECT <- rename(SUBJECT, Subject=V1)
> 
  > Y_test <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
> 
  > Y_train <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
> 
  > ACTIVITY <- bind_rows(Y_test, Y_train)
> 
  > ACTIVITY <- rename(ACTIVITY, Activity=V1)
> 
  > BODY_ACC_X_test <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")
> BODY_ACC_X_train <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt")
> 
  > BODY_ACC_X <- bind_rows(body_acc_x_test, body_acc_x_train)
Error: object 'body_acc_x_test' not found

> BODY_ACC_X <- bind_rows(BODY_ACC_X_test, BODY_ACC_X_train)
> 
  > BODY_ACC_XN <- select(BODY_ACC_X, V1, V6)
> 
  > BODY_ACC_XN1 <- rename(BODY_ACC_XN, Mean_BACC_X=V1, SD_BACC_X=V6)
> 
  > BODY_ACC_Y_test <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
> 
  > BODY_ACC_Y_train <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")
> BODY_ACC_Y <- bind_rows(BODY_ACC_Y_test, BODY_ACC_Y_train)
> BODY_ACC_YN <- select(BODY_ACC_Y, V2, V7)
> BODY_ACC_YN1 <- rename(BODY_ACC_YN, Mean_BACC_Y=V2, SD_BACC_Y=V7)
> BODY_ACC_Z_test <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")
> 
  > BODY_ACC_Z_train <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt")
> 
  > BODY_ACC_Z <- bind_rows(BODY_ACC_Z_test, BODY_ACC_Z_train)
> BODY_ACC_ZN <- select(BODY_ACC_Z, V3, V8)
> BODY_ACC_ZN1 <- rename(BODY_ACC_ZN, MeanBACCZ=V3, StdBACCZ=V8)
> BODY_GYRO_X_test <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")
> 
  > BODY_GYRO_X_train <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt")
> 
  > BODY_GYRO_X <- bind_rows(body_gyro_x_test, body_gyro_x_train)
Error: object 'body_gyro_x_test' not found

> BODY_GYRO_X <- bind_rows(BODY_GYRO_X_test, BODY_GYRO_X_train)
> 
  > BODY_GYRO_XN <- select(BODY_GYRO_X, V1, V6)
> 
  > BODY_GYRO_XN1 <- rename(BODY_GYRO_YN, MeanBGYROX=V1, StdBGYROX=V6)
Error: object 'BODY_GYRO_YN' not found

> BODY_GYRO_XN1 <- rename(BODY_GYRO_XN, MeanBGYROX=V1, StdBGYROX=V6)
> 
  > rm(BODY_GYRO_XN1)
> BODY_GYRO_XN1 <- rename(BODY_GYRO_YN, Mean_BGYRO_X=V1, Std_BGYRO_X=V6)
Error: object 'BODY_GYRO_YN' not found

> BODY_GYRO_XN1 <- rename(BODY_GYRO_XN, Mean_BGYRO_X=V1, Std_BGYRO_X=V6)
> BODY_GYRO_Y_test <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt")
> 
  > BODY_GYRO_Y_train <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt")
> 
  > BODY_GYRO_Y <- bind_rows(BODY_GYRO_Y_test, BODY_GYRO_Y_train)
> 
  > BODY_GYRO_YN <- select(BODY_GYRO_Y, V2, V7)
> 
  > BODY_GYRO_YN1 <- rename(BODY_GYRO_YN, Mean_BGYRO_Y=V2, Std_BGYRO_Y=V7)
> BODY_GYRO_Z_test <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")
> 
  > BODY_GYRO_Z_test <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")
> 
  > BODY_GYRO_Z <- bind_rows(BODY_GYRO_Z_test, BODY_GYRO_Z_train)
Error: object 'BODY_GYRO_Z_train' not found

> BODY_GYRO_Z_train <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt")
> 
  > BODY_GYRO_Z <- bind_rows(BODY_GYRO_Z_test, BODY_GYRO_Z_train)
> 
  > BODY_GYRO_ZN <- select(BODY_GYRO_Y, V3, V8)
> BODY_GYRO_ZN1 <- rename(BODY_GYRO_ZN, Mean_BGYRO_Z=V3, Std_BGYRO_Z=V8)
> Total_ACC_X_test <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")
> 
  > Total_ACC_X_train <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt")
> TOTAL_ACC_X <- bind_rows(Total_ACC_X_test, Total_ACC_X_train)
> 
  > TOTAL_ACC_XN <- select(TOTAL_ACC_X, V1, V6)
> TOTAL_ACC_XN1 <- rename(TOTAL_ACC_X, Mean_TACC_X=V1, Std_TACC_X=V6)
> 
  > Total_ACC_Y_test <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")
> Total_ACC_Y_train <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt")
> TOTAL_ACC_Y <- bind_rows(Total_ACC_Y_test, Total_ACC_Y_train)
> TOTAL_ACC_YN <- select(TOTAL_ACC_Y, V2, V7)
> TOTAL_ACC_YN1 <- rename(TOTAL_ACC_Y, Mean_TACC_Y=V2, Std_TACC_Y=V7)
> Total_ACC_Z_test <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")
> 
  > Total_ACC_Z_train <- read.table("C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")
> 
  > TOTAL_ACC_Z <- bind_rows(Total_ACC_Z_test, Total_ACC_Z_train)
> TOTAL_ACC_ZN <- select(TOTAL_ACC_Z, V3, V8)
> TOTAL_ACC_ZN1 <- rename(TOTAL_ACC_Z, Mean_TACC_Z=V3, Std_TACC_Z=V8)
> View(subjects)
Error in View : object 'subjects' not found

> View(SUBJECTS)
Error in View : object 'SUBJECTS' not found

> View(SUBJECT)
> View(ACTIVITY)
> View(BODY_ACC_X)
> View(BODY_ACC_XN1)
> View(BODY_ACC_YN1)
> View(BODY_ACC_ZN1)
> View(BODY_GYRO_X)
> View(BODY_GYRO_XN1)
> View(BODY_GYRO_YN1)
> View(BODY_GYRO_ZN1)
> View(Total_ACC_XN1)
Error in View : object 'Total_ACC_XN1' not found

> View(TOTAL_ACC_XN1)
> rm(TOTAL_ACC_XN1)
> TOTAL_ACC_XN <- select(TOTAL_ACC_X, V1, V6)
> TOTAL_ACC_XN1 <- rename(TOTAL_ACC_X, Mean_TACC_X=V1, Std_TACC_X=V6)
> View(TOTAL_ACC_XN1)
> TOTAL_ACC_XN1 <- select(Mean_TACC_X, Std_TACC_X)
Error: object 'Mean_TACC_X' not found

> TOTAL_ACC_XN1 <- select(TOTAL_ACC_XN1, Mean_TACC_X, Std_TACC_X)
> View(TOTAL_ACC_XN1)
> View(TOTAL_ACC_YN1)
> TOTAL_ACC_YN1 <- select(TOTAL_ACC_YN1, Mean_TACC_Y, Std_TACC_Y)
> View(TOTAL_ACC_YN1)
> View(TOTAL_ACC_ZN1)
> TOTAL_ACC_ZN1 <- select(TOTAL_ACC_ZN1, Mean_TACC_Z, Std_TACC_Z)
> View(TOTAL_ACC_ZN1)
> TidyDATA <- cbind(SUBJECT, ACTIVITY, BODY_ACC_XN1, BODY_ACC_YN1, BODY_ACC_ZN1, BODY_GYRO_XN1, BODY_GYRO_YN1, BODY_GYRO_ZN1, TOTAL_ACC_XN1, TOTAL_ACC_YN1, TOTAL_ACC_ZN1)
> 
  > View(TidyDATA)
> TidyDATA <- arrange(TidyDATA, Subject, Activity)
> write.table(TidyDATA, "C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/TidyDATA.txt")
> write.table(TidyDATA, "C:/Users/sunal/OneDrive/Documents/datasciencecoursera/ASSIGN4/UCI HAR Dataset/TidyDATA.txt", sep=" ", row.name=FALSE)
