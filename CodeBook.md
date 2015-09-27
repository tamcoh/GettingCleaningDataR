

The original data was taken from 30 subjects performing 6 differnt activities (walking, walking upstairs, walking downstairs, sitting, standing, and walking) while wearing a smartphone.
Orignially, there were 561 features (variables), as described below.
The original dataset was first subset, to only include the mean and standard deviation features (a total of 79 variables instead of the original 561).
The data was then summarized across distinct subject and activity, so that each column in the new dataset would represent the average of the feature.
The resulting dataset includes 180 records, one row for each subject/activity combination. 


Description of columns:

subject = unique identifier of study particpant. 1-30.
activity = the activity performed by the subject (walking, walking upstairs, walking downstairs, sitting, standing, walking)

AVERAGES of the following features within the subject/activity:
tBodyAcc-mean()-X
tBodyAcc-mean()-Y 
tBodyAcc-mean()-Z 
tGravityAcc-mean()-X 
tGravityAcc-mean()-Y 
tGravityAcc-mean()-Z           
tBodyAccJerk-mean()-X 
tBodyAccJerk-mean()-Y          
tBodyAccJerk-mean()-Z
tBodyGyro-mean()-X             
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z             
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y         
tBodyGyroJerk-mean()-Z
tBodyAccMag-mean()             
tGravityAccMag-mean()
tBodyAccJerkMag-mean()         
tBodyGyroMag-mean() 
tBodyGyroJerkMag-mean()        
fBodyAcc-mean()-X
fBodyAcc-mean()-Y              
fBodyAcc-mean()-Z
fBodyAcc-meanFreq()-X          
fBodyAcc-meanFreq()-Y 
fBodyAcc-meanFreq()-Z          
fBodyAccJerk-mean()-X 
fBodyAccJerk-mean()-Y          
fBodyAccJerk-mean()-Z 
fBodyAccJerk-meanFreq()-X      
fBodyAccJerk-meanFreq()-Y 
fBodyAccJerk-meanFreq()-Z      
fBodyGyro-mean()-X   
fBodyGyro-mean()-Y             
fBodyGyro-mean()-Z   
fBodyGyro-meanFreq()-X         
fBodyGyro-meanFreq()-Y 
fBodyGyro-meanFreq()-Z         
fBodyAccMag-mean()  
fBodyAccMag-meanFreq()         
fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-meanFreq() 
fBodyBodyGyroMag-mean()     
fBodyBodyGyroMag-meanFreq()    
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-meanFreq()
tBodyAcc-std()-X       
tBodyAcc-std()-Y               
tBodyAcc-std()-Z  
tGravityAcc-std()-X            
tGravityAcc-std()-Y  
tGravityAcc-std()-Z            
tBodyAccJerk-std()-X  
tBodyAccJerk-std()-Y           
tBodyAccJerk-std()-Z 
tBodyGyro-std()-X              
tBodyGyro-std()-Y 
tBodyGyro-std()-Z              
tBodyGyroJerk-std()-X 
tBodyGyroJerk-std()-Y          
tBodyGyroJerk-std()-Z 
tBodyAccMag-std()              
tGravityAccMag-std() 
tBodyAccJerkMag-std()          
tBodyGyroMag-std()  
tBodyGyroJerkMag-std()         
fBodyAcc-std()-X   
fBodyAcc-std()-Y               
fBodyAcc-std()-Z   
fBodyAccJerk-std()-X           
fBodyAccJerk-std()-Y 
fBodyAccJerk-std()-Z           
fBodyGyro-std()-X   
fBodyGyro-std()-Y              
fBodyGyro-std()-Z    
fBodyAccMag-std()              
fBodyBodyAccJerkMag-std() 
fBodyBodyGyroMag-std()         
fBodyBodyGyroJerkMag-std()

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag