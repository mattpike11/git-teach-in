### Example analysis script ###

# Read local csv containing a dummy dataset
file_path <- "example_data.csv"
df <- readr::read_csv(file_path)

# Count the genders from the dataframe
male_count <- sum(df$GENDER == "M")
female_count <- sum(df$GENDER == "F")
unidentified_count <- sum(df$GENDER == "U")

# Summarise the gender count in a formatted string
formatted_string <- paste("In this dataset there are", male_count, "males and",
                          female_count, "females.", unidentified_count, "people are unidentified.")
print(formatted_string)

# Replace NA outcome with "Pending"
df$OUTCOME[is.na(df$OUTCOME)] <- "Pending"

# Create the bar chart using ggplot2
plot <- ggplot(df, aes(x = OUTCOME, fill = OUTCOME)) +
  geom_bar()+
  coord_flip()+
  ggtitle(formatted_string)+
  xlab("Outcome of application")+
  ylab("Frequency")

# Print the bar chart
print(plot)
###
