# Activity 4 -- Research Compendium Part 1

# Load necessary libraries
library(tidyverse)
library(tidytext)
library(topicmodels)
library(tm)

# Load the dataset (Replace 'nobel_prize_winners.csv' with your dataset's file path)
nobel_data <- read_csv('nobel-prize-winners.csv')

# Inspect the data
print(head(nobel_data))

# Text Preprocessing
cleaned_text <- nobel_data %>%
  select(motivation) %>%
  mutate(motivation = str_to_lower(motivation)) %>%
  mutate(motivation = str_replace_all(motivation, '[^[:alnum:]\\s]', ' ')) %>%
  drop_na()

# Display cleaned text
print(head(cleaned_text))

# Save cleaned text to a CSV file
write.csv(cleaned_text, 'cleaned_data.csv', row.names = FALSE)
