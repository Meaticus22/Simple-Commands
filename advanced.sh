#!/bin/bash

# Get all available Linux commands
commands=$(compgen -c)

# Remove any commands that may cause issues
commands=$(echo "$commands" | grep -v 'sudo' | grep -v 'man' | grep -v 'tldr')

# Get a random command
random_command=$(echo "$commands" | shuf -n 1)

# Display the command for the day
echo "Today's Linux command to learn: $random_command"

# Display the manpage for the command
echo "Manpage for $random_command:"
man "$random_command"

# Display the tldr page for the command (MAKE SURE TO install tldr: https://github.com/tldr-pages/tldr)
echo "tldr page for $random_command:"
tldr "$random_command"

# Add the script to .bashrc to run it every time the terminal is opened change /path/to/file/ your actual path
if [[ ! "$(grep -Fxq 'source /path/to/file/' ~/.bashrc)" ]]; then
    echo "source /path/to/file/" >> ~/.bashrc
fi
