#!/bin/bash

# Array of Linux commands
commands=(
    "ls"
    "cd"
    "pwd"
    "mkdir"
    "rm"
    "cp"
    "mv"
    "rmdir"
    # Add more commands here if you want to
)

# Get a random command
random_command=${commands[$RANDOM % ${#commands[@]}]}

# Display the command for the day
echo "Today's Linux command to learn: $random_command"

# Practice section
read -p "Practice time! Try executing the command: " user_input

# Check if the user's input matches the random command
if [[ "$user_input" == "$random_command" ]]; then
    echo "Congratulations! You executed the command correctly."
else
    echo "Oops! It seems like you didn't execute the command correctly."
fi

# Add the script to .bashrc to run it every time the terminal is opened
if [[ ! "$(grep -Fxq 'source /path/to/script.sh' ~/.bashrc)" ]]; then
    echo "source /Commands/to/script.sh" >> ~/.bashrc
fi
