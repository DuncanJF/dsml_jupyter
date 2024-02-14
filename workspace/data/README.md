# Datasets

## Human Activity Recognition Using Smartphones
*  Licence: This dataset is licensed under a Creative Commons Attribution 4.0 International (CC BY 4.0) license.
*  [URL:](https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones)
*  [DOI:](https://doi.org/10.24432/C54S4K)

### Additional Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset. 

A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: http://www.youtube.com/watch?v=XOEN9W05_4A

An updated version of this dataset can be found at http://archive.ics.uci.edu/ml/datasets/Smartphone-Based+Recognition+of+Human+Activities+and+Postural+Transitions. It includes labels of postural transitions between activities and also the full raw inertial signals instead of the ones pre-processed into windows. 


## Leagure of Legends
*  [Licence:] Creative Commons 0, public domain.
*  [URL:](https://www.kaggle.com/datasets/datasnaek/league-of-legends)

### General Info

This is a collection of over 50,000 ranked EUW games from the game League of Legends, as well as json files containing a way to convert between champion and summoner spell IDs and their names. For each game, there are fields for:

*  Game ID
*  Creation Time (in Epoch format)
*  Game Duration (in seconds)
*  Season ID
*  Winner (1 = team1, 2 = team2)
*  First Baron, dragon, tower, blood, inhibitor and Rift Herald (1 = team1, 2 = team2, 0 = none)
*  Champions and summoner spells for each team (Stored as Riot's champion and summoner spell IDs)
*  The number of tower, inhibitor, Baron, dragon and Rift Herald kills each team has
*  The 5 bans of each team (Again, champion IDs are used)
