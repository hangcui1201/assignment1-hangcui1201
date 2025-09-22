#!/bin/sh

# first argument
writefile=$1

# second argument
writestr=$2

if [ "$#" -ne 2 ]
then
  echo "Wrong input number of arguments"
  exit 1
fi

# Attempt to create the file and write the content
mkdir -p "$(dirname "$writefile")" && touch "$writefile"
echo "$writestr" > "$writefile"

# If the last command was successful, $? will return 0
# If the last command failed, $? will return non-zero
#if [ $? -ne 0 ]; then
#    echo "File could be not created"
#    exit 1
#fi

# Or

# e option returns true if the file exists, 
# regardless of its type (regular file, directory, etc.)
if [ ! -e "$writefile" ]; then
    echo "File could be not created"
    exit 1
fi

exit 0
