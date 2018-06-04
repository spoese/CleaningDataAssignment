# Getting and Cleaning Data Final Assignment

## Explanation of code

After an initial download and read-in of the data, we then combine the different tables into a single dataset. This is done by adding labels demarcating the different subjects and the different activities they perform to the actual data that was measured using the watches.  Afterwards, the set is trimmed to only include only the mean and standard deviation of the different measurements using the *grepl()* function. The *sapply()* function is then used to attach more descriptive activity labels to the dataset (rather than a basic 1-6 index). The different measurements are then given names from the features.txt file. Lastly, in order to make a tidy dataset in which the only variables are Subject, Activity, Measurement and Value, we melt the original dataset, and use the *ddply()* function to summarize each measurement with it's respective mean. This data set is tidy because each column is one variable, each row is one observation (or really a mean of observations), and all information is displayed in a single table because there is only one kind of data being measured.

## Explanation of codebook

Since the variables used following a very formulaic method of naming, the codebook describes each component that may appear in the variable name and allows the user to put the pieces together to find the name of a particular variable.
