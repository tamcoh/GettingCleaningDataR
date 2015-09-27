
The run_analysis R script works by:

- importing the test and train data, activity labels, subject identifiers, and merging them together.
- setting the values from the "features.txt" file as the column headers for this dataset.
- recoding the acitivty labels to use descriptive words instead of numbers (1-6).
- subsetting the dataset to only retain columns that are "mean" or "stdev" measurements. (Do this by grepping column names).
- create a tidy data set - where there is one row per subject / activity measured, and one column per variable, with the variable values averaged across the subject/activity dimensions. 

