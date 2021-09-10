#!/usr/bin/env bash
#file name: guessinggame.sh

#Create a program called guessinggame.sh
#This program will continuously ask the user to guess the number of files in the current directory,
#until they guess the correct number. The user will be informed if their guess is too high or too low.
#Once the user guesses the correct number of files in the current directory they should be congratulated.

echo | ls -l > filesnumber.txt
number=$(echo | egrep -c "\w\W" filesnumber.txt)

function ask {
  echo "Can you guess the number of files in current directory?"
  read response
  echo "You entered: $response"
}

#program

ask

while [[ $response -ne $number ]]; do
  if [[ $response -lt $number ]]; then
    echo "too low, try again"
    ask
  elif [[ $response -gt $number ]]; then
    echo "too high, try again"
    ask
    fi
done
echo "Congratulations, $response is the correct answer!"
