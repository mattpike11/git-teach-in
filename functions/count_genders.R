## An example function to count the genders in a dataframe

count_genders <- function(df) {
  # Count the genders from the dataframe
  male_count <- sum(df$GENDER == "M")
  female_count <- sum(df$GENDER == "F")
  unidentified_count <- sum(df$GENDER == "U")
  
  # Summarise the gender count in a formatted string
  formatted_string <- paste("In this dataset there are", male_count, "males and",
                            female_count, "females.", unidentified_count, "people are unidentified.")
  return(formatted_string)
}
