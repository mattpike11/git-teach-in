### Example analysis script ###

# Read local csv containing a dummy dataset
file_path <- "example_data.csv"
df <- readr::read_csv(file_path)

# Count the genders from the dataframe
male_count <- count(df$GENDER == "M")
female_count <- count(df$GENDER == "F")
unidentified_count <- count(df$GENDER == "U")

# Summarise the gender count in a formatted string
formatted_string <- paste("In this dataset there are", male_count, "males and",
                          female_count, "females.", unidentified_count, "people are unidentified.")
print(formatted_string)
