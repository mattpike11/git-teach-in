# Example analysis script

file_path <- "D:/Users/matt.pike/OneDrive - MHCLG/Desktop/Source Code/git-example-repo/git-teach-in/example_data.csv"
df <- readr::read_csv(file_path)

male_count <- count(df$GENDER == "M")
female_count <- count(df$GENDER == "F")
unidentified_count <- count(df$GENDER == "U")

# Corrected version of the formatted string
formatted_string <- paste("In this dataset there are", male_count, "males and",
                          female_count, "females.", unidentified_count, "people are unidentified.")
print(formatted_string)
