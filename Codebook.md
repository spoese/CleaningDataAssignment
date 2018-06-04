# Codebook for TidyDataset.txt

Variable Name | Class | Description
--- | --- | ---
Subject | Integer | Index denoting which subject performed an activity (1-30)
Activity | Factor | Which activity was performed (LAYING,SITTING,STANDING,WALKING,WALKING-UPSTAIRS,WALKING-DOWNSTAIRS)
Measurement | Character | String denoting which measurement is being taken (see next table for more detail)
Averages | Numeric | Average of all measurements for this combination of Subject, Activity and Measurement

Since the entries under the **Measurement** variable may not always be clear, some additional specifics are provided here. These notes should be used to parse the meaning of a particular entry in the **Measurement** column.

Measurement Chunk | Value | Description
--- | --- | ---
x... | t... | Represents a time domain signal measurement
| f... | Represents a frequency domain signal measurement
.yyyy... | .Body... | Measurement of force caused by body movement
| .Gravity... | Measurement of force caused by gravity
...zzz... | ...Acc... | Measurement taken by accelerometer
| ...Gyro... | Measurement taken by gyroscope
......nnn | ......Jerk | Measures jerk
| ......Mag | Measures magnitude
...-mmm(-...) | ...-mean(-...) | Mean of this type of measurement
| ...-std(-...) | Standard deviation of this type of measurement
...-d | ...-X | Measurement in x direction
| ...-Y | Measurement in y direction
| ...-Z | Measurement in z direction