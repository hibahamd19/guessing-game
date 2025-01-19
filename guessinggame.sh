#!/usr/bin/env bash
# File: guessinggame.sh

function count_files {
  # Count the number of files in the current directory
  echo $(ls -1 | wc -l)
}

num_files=$(count_files)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory? Take a guess!"

while true; do
  read -p "Enter your guess: " guess

  if [[ $guess -lt $num_files ]]; then
    echo "Your guess is too low. Try again!"
  elif [[ $guess -gt $num_files ]]; then
    echo "Your guess is too high. Try again!"
  else
    echo "Congratulations! You guessed the correct number of files: $num_files."
    break
  fi
done