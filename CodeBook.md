#Code Book
Describes the variables in the Processed_Data.txt file in this repo. 

##ID Fields
Subjects (Participant information)

Activity (Type of activity)  

##The extracted features (mean and standard deviation).

The original data set features come from the accelerometer and gyroscope 3-axial raw signals Time Accelerator-XYZ and Time_Gyroscope-XYZ.
The time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (Time_Body_Accelerator-XYZ and Time_Gravity_Accelerator-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (Time_Body_AcceleratorJerk-XYZ and Time_Body_GyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (Time_Body_Accelerator_Magnitude, Time_Gravity_Accelerator_Magnitude, Time_Body_Accelerator_JerkMagnitude, Time_Body_Gyroscope_Magnitude, Time_Body_Gyroscope_JerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing Frequency_Body_Accelerator-XYZ, Frequency_Body_AcceleratorJerk-XYZ, Frequency_Body_Gyroscope-XYZ, Frequency_Body_Accelerator_Jerk_Magnitude, Frequency_Body_Gyroscope_Magnitude, Frequency_Body_Gyroscope_Jerk_Magnitude.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The means and standard deviations of these features from the original data set were extracted for future further analysis into this processed data set. 

##Means
Time_Body_Accelerator-Mean()-X

Time_Body_Accelerator-Mean()-Y

Time_Body_Accelerator-Mean()-Z

Time_Gravity_Accelerator-Mean()-X

Time_Gravity_Accelerator-Mean()-Y

Time_Gravity_Accelerator-Mean()-Z

Time_Body_AcceleratorJerk-Mean()-X

Time_Body_AcceleratorJerk-Mean()-Y

Time_Body_AcceleratorJerk-Mean()-Z

Time_Body_Gyroscope-Mean()-X

Time_Body_Gyroscope-Mean()-Y

Time_Body_Gyroscope-Mean()-Z

Time_Body_GyroscopeJerk-Mean()-X

Time_Body_GyroscopeJerk-Mean()-Y

Time_Body_GyroscopeJerk-Mean()-Z

Time_Body_Accelerator_Magnitude-Mean()

Time_Gravity_Accelerator_Magnitude-Mean()

Time_Body_AcceleratorJerk_Magnitude-Mean()

Time_Body_Gyroscope_Magnitude-Mean()

Time_Body_GyroscopeJerk_Magnitude-Mean()

Frequency_Body_Accelerator-Mean()-X

Frequency_Body_Accelerator-Mean()-Y

Frequency_Body_Accelerator-Mean()-Z

Frequency_Body_Accelerator-MeanFreq()-X

Frequency_Body_Accelerator-MeanFreq()-Y

Frequency_Body_Accelerator-MeanFreq()-Z

Frequency_Body_AcceleratorJerk-Mean()-X

Frequency_Body_AcceleratorJerk-Mean()-Y

Frequency_Body_AcceleratorJerk-Mean()-Z

Frequency_Body_AcceleratorJerk-MeanFreq()-X

Frequency_Body_AcceleratorJerk-MeanFreq()-Y

Frequency_Body_AcceleratorJerk-MeanFreq()-Z

Frequency_Body_Gyroscope-Mean()-X

Frequency_Body_Gyroscope-Mean()-Y

Frequency_Body_Gyroscope-Mean()-Z

Frequency_Body_Gyroscope-MeanFreq()-X

Frequency_Body_Gyroscope-MeanFreq()-Y

Frequency_Body_Gyroscope-MeanFreq()-Z

Frequency_Body_Accelerator_Magnitude-Mean()

Frequency_Body_Accelerator_Magnitude-MeanFreq()

Frequency_BodyBody_AcceleratorJerk_Magnitude-Mean()

Frequency_BodyBody_AcceleratorJerk_Magnitude-MeanFreq()

Frequency_BodyBody_Gyroscope_Magnitude-Mean()

Frequency_BodyBody_Gyroscope_Magnitude-MeanFreq()

Frequency_BodyBody_GyroscopeJerk_Magnitude-Mean()

Frequency_BodyBody_GyroscopeJerk_Magnitude-MeanFreq()

angle(tBody_AcceleratorMean,gravity)

angle(tBody_AcceleratorJerkMean),gravityMean)

angle(tBody_GyroscopeMean,gravityMean)

angle(tBody_GyroscopeJerkMean,gravityMean)

angle(X,gravityMean)

angle(Y,gravityMean)

angle(Z,gravityMean)

##Standard Deviations
Time_Body_Accelerator-StDev()-X

Time_Body_Accelerator-StDev()-Y

Time_Body_Accelerator-StDev()-Z

Time_Gravity_Accelerator-StDev()-X

Time_Gravity_Accelerator-StDev()-Y

Time_Gravity_Accelerator-StDev()-Z

Time_Body_AcceleratorJerk-StDev()-X

Time_Body_AcceleratorJerk-StDev()-Y

Time_Body_AcceleratorJerk-StDev()-Z

Time_Body_Gyroscope-StDev()-X

Time_Body_Gyroscope-StDev()-Y

Time_Body_Gyroscope-StDev()-Z

Time_Body_GyroscopeJerk-StDev()-X

Time_Body_GyroscopeJerk-StDev()-Y

Time_Body_GyroscopeJerk-StDev()-Z

Time_Body_Accelerator_Magnitude-StDev()

Time_Gravity_Accelerator_Magnitude-StDev()

Time_Body_AcceleratorJerk_Magnitude-StDev()

Time_Body_Gyroscope_Magnitude-StDev()

Time_Body_GyroscopeJerk_Magnitude-StDev()

Frequency_Body_Accelerator-StDev()-X

Frequency_Body_Accelerator-StDev()-Y

Frequency_Body_Accelerator-StDev()-Z

Frequency_Body_AcceleratorJerk-StDev()-X

Frequency_Body_AcceleratorJerk-StDev()-Y

Frequency_Body_AcceleratorJerk-StDev()-Z

Frequency_Body_Gyroscope-StDev()-X

Frequency_Body_Gyroscope-StDev()-Y

Frequency_Body_Gyroscope-StDev()-Z

Frequency_Body_Accelerator_Magnitude-StDev()

Frequency_BodyBody_AcceleratorJerk_Magnitude-StDev()

Frequency_BodyBody_Gyroscope_Magnitude-StDev()

Frequency_BodyBody_GyroscopeJerk_Magnitude-StDev()

