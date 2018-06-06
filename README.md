# Getting and Cleaning Data Final Assignment

## Important Note

**The mentor's blog for the course (https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/) specifically mentions (as does the rubric I believe) that both the wide and narrow formats are acceptably tidy. I found it easier to look at the narrow format, so please do not mark off even if the format is different from how you put together your dataset.**

## Explanation of code

After an initial download and read-in of the data, we then combine the different tables into a single dataset. This is done by adding labels demarcating the different subjects and the different activities they perform to the actual data that was measured using the watches.  Afterwards, the set is trimmed to only include only the mean and standard deviation of the different measurements using the `grepl` function. The `sapply` function is then used to attach more descriptive activity labels to the dataset (rather than a basic 1-6 index). The different measurements are then given names from the *features.txt* file. Lastly, in order to make a tidy dataset in which the only variables are **Subject**, **Activity**, **Measurement** and **Value**, we melt the original dataset, and use the `ddply` function to summarize each measurement with it's respective mean. This data set is tidy because each column is one variable, each row is one observation (or really a mean of observations), and all information is displayed in a single table because there is only one kind of data being measured. Some additional tidying of column names and a final write to a .txt file wraps up the code.

## Explanation of codebook

Since the variables used for the measurements follow a very formulaic method of naming, the codebook describes each component that may appear in the variable name and allows the user to put the pieces together to find the name of a particular measurement. The other variables are fairly self-explanatory.

## Reading back into R

In order to read the dataset back into R, feel free to use the following code:

```
data <- read.table(file_path, header = TRUE)
View(data)
```