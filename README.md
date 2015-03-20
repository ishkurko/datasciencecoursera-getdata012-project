# Coursers Getting and Cleaning Data Course Project

This project provides a Course Project for peer assessment for Coursera Getting and Cleaning Data.
The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

Project contains:

1.  A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called `CodeBook.md`.
2.  Script for data transformation `run_analysis.R`.
3.  This `README.md`.

## Installation

Checkout file run_analysis.R and execute in R console.
Follow R functions will be loaded:
- `getdata012.run` - main function for Course Project
- `getdata012.download` - will download row data from internet in zip file
- `getdata012.read` - reads amd merges the training and the test sets to create one data set
- `getdata012.select` - extracts only the measurements on the mean and standard deviation for each measurement
- `getdata012.activity` - changes activity ids on descriptive activity names in the data set
- `getdata012.group` - creates tidy data set with the average of each variable for each activity and each subject

## Usage

In R console run `getdata012.run()` if the data for the project locates in working directory.
Or run `getdata012.run(offline = FALSE)` with downloading data from internet.
As result, function will return tidy data set with the average of each variable for each activity and each subject, also same tidy data will be save in `tidy_data.txt` file.
More details in `CodeBook.md`

## History

Version 1.0 - initial version for assessment

## Credits 

- Ihor Shkurko (<ishkurko@gmail.com>)

## License: Creative Commons 3.0 License

This work is licensed under the Creative Commons Attribution 3.0 Unported License. To view a copy of this license, visit http://creativecommons.org/licenses/by/3.0/.F
