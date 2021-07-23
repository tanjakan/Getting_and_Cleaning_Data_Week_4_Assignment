Code book for Getting and Cleaning Data - Week 4 Assignment
================

This repository contains the submission for the assignment for week 4 of the Getting and Cleaning Data Coursera course. The data set that this code book describes can be found in the file tidy_data.txt.

## General Data Description

The variables in the dataset represent data collected from the
accelerometers from the Samsung Galaxy S smartphone.

The generated dataset contained variables calculated based on the mean and standard deviation. Each row of the dataset is an average of each activity type for all subjects.

The structure of the dataset is described in the Data section, its variables are listed in the Variables section, and the transformations that were carried out to obtain the data set based on the source data are presented in the Transformations section.

## Data

The tidy_data.txt data file is a text file, containing space-separated values.

The first row contains the names of the variables, which are listed and described in the Variables section, and the following rows contain the values of these variables.

## Variables

Each row contains, for a given subject and activity, 79 averaged signal measurements.

* subject: Subject identifier, integer, ranges from 1 to 30
* activity: Activity identifier, string with 6 possible values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

Average time-domain body acceleration in the X, Y and Z directions:

* timeDomainBodyAccelerometerMeanX 
* timeDomainBodyAccelerometerMeanY 
* timeDomainBodyAccelerometerMeanZ 

Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

* timeDomainBodyAccelerometerStandardDeviationX 
* timeDomainBodyAccelerometerStandardDeviationY 
* timeDomainBodyAccelerometerStandardDeviationZ 

Average time-domain gravity acceleration in the X, Y and Z directions:

* timeDomainGravityAccelerometerMeanX 
* timeDomainGravityAccelerometerMeanY 
* timeDomainGravityAccelerometerMeanZ

Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

* timeDomainGravityAccelerometerStandardDeviationX 
* timeDomainGravityAccelerometerStandardDeviationY 
* timeDomainGravityAccelerometerStandardDeviationZ 

Average time-domain body acceleration jerk in the X, Y and Z directions:

* timeDomainBodyAccelerometerJerkMeanX 
* timeDomainBodyAccelerometerJerkMeanY 
* timeDomainBodyAccelerometerJerkMeanZ 

Standard deviation of the time-domain body acceleration jerk in the X, Y and Z directions:

* timeDomainBodyAccelerometerJerkStandardDeviationX 
* timeDomainBodyAccelerometerJerkStandardDeviationY 
* timeDomainBodyAccelerometerJerkStandardDeviationZ

Average time-domain body angular velocity in the X, Y and Z directions:

* timeDomainBodyGyroscopeMeanX 
* timeDomainBodyGyroscopeMeanY 
* timeDomainBodyGyroscopeMeanZ 

Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

* timeDomainBodyGyroscopeStandardDeviationX 
* timeDomainBodyGyroscopeStandardDeviationY 
* timeDomainBodyGyroscopeStandardDeviationZ 

Average time-domain body angular velocity jerk in the X, Y and Z directions:

* timeDomainBodyGyroscopeJerkMeanX 
* timeDomainBodyGyroscopeJerkMeanY 
* timeDomainBodyGyroscopeJerkMeanZ 

Standard deviation of the time-domain body angular velocity jerk in the X, Y and Z directions:

* timeDomainBodyGyroscopeJerkStandardDeviationX 
* timeDomainBodyGyroscopeJerkStandardDeviationY 
* timeDomainBodyGyroscopeJerkStandardDeviationZ 

Average and standard deviation of the time-domain magnitude of body acceleration:

* timeDomainBodyAccelerometerMagnitudeMean 
* timeDomainBodyAccelerometerMagnitudeStandardDeviation 

Average and standard deviation of the time-domain magnitude of gravity acceleration:

* timeDomainGravityAccelerometerMagnitudeMean 
* timeDomainGravityAccelerometerMagnitudeStandardDeviation 

Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

* timeDomainBodyAccelerometerJerkMagnitudeMean 
* timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation 

Average and standard deviation of the time-domain magnitude of body angular velocity:

* timeDomainBodyGyroscopeMagnitudeMean 
* timeDomainBodyGyroscopeMagnitudeStandardDeviation 

Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

* timeDomainBodyGyroscopeJerkMagnitudeMean 
* timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation 

Average frequency-domain body acceleration in the X, Y and Z directions:

* frequencyDomainBodyAccelerometerMeanX 
* frequencyDomainBodyAccelerometerMeanY 
* frequencyDomainBodyAccelerometerMeanZ 

Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

* frequencyDomainBodyAccelerometerStandardDeviationX 
* frequencyDomainBodyAccelerometerStandardDeviationY 
* frequencyDomainBodyAccelerometerStandardDeviationZ 

Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

* frequencyDomainBodyAccelerometerMeanFrequencyX 
* frequencyDomainBodyAccelerometerMeanFrequencyY 
* frequencyDomainBodyAccelerometerMeanFrequencyZ 

Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

* frequencyDomainBodyAccelerometerJerkMeanX 
* frequencyDomainBodyAccelerometerJerkMeanY 
* frequencyDomainBodyAccelerometerJerkMeanZ 

Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

* frequencyDomainBodyAccelerometerJerkStandardDeviationX 
* frequencyDomainBodyAccelerometerJerkStandardDeviationY 
* frequencyDomainBodyAccelerometerJerkStandardDeviationZ 

Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

* frequencyDomainBodyAccelerometerJerkMeanFrequencyX 
* frequencyDomainBodyAccelerometerJerkMeanFrequencyY 
* frequencyDomainBodyAccelerometerJerkMeanFrequencyZ 

Average frequency-domain body angular velocity in the X, Y and Z directions:

* frequencyDomainBodyGyroscopeMeanX 
* frequencyDomainBodyGyroscopeMeanY 
* frequencyDomainBodyGyroscopeMeanZ 

Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

* frequencyDomainBodyGyroscopeStandardDeviationX 
* frequencyDomainBodyGyroscopeStandardDeviationY 
* frequencyDomainBodyGyroscopeStandardDeviationZ 

Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

* frequencyDomainBodyGyroscopeMeanFrequencyX 
* frequencyDomainBodyGyroscopeMeanFrequencyY 
* frequencyDomainBodyGyroscopeMeanFrequencyZ 

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

* frequencyDomainBodyAccelerometerMagnitudeMean 
* frequencyDomainBodyAccelerometerMagnitudeStandardDeviation 
* frequencyDomainBodyAccelerometerMagnitudeMeanFrequency 

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

* frequencyDomainBodyAccelerometerJerkMagnitudeMean 
* frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation 
* frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency 

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

* frequencyDomainBodyGyroscopeMagnitudeMean 
* frequencyDomainBodyGyroscopeMagnitudeStandardDeviation 
* frequencyDomainBodyGyroscopeMagnitudeMeanFrequency 

Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

* frequencyDomainBodyGyroscopeJerkMagnitudeMean 
* frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation 
* frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency

## Transformations

The following transformations were applied to the source data:

The training and the test sets were merged to create one data set.
Only the measurements on the mean and standard deviation were extracted for each measurement. 
Descriptive activity names were used to name the activities in the data set.
The data set was labeled appropriately with descriptive variable names. 
A second, independent tidy data set with the average of each variable for each activity and each subject was created.

The collection of the source data and the transformations listed above were implemented by the run_analysis.R R-script (see README.md file for usage instructions).
