#!/usr/bin/env bash

if [ ! -f TEMPLATE.md ]; then
    
    # Copy and rename TEMPLATE.md to today's date.
    echo "# TEMPLATE.md not found."
    exit 1

else
    
    echo "# Copying TEMPLATE.md."
    DATE=`date +%Y-%m-%d`
    cp TEMPLATE.md $DATE.md

    # Check if argument is supplied.
    if [ -z "$1" ]; then

        echo "# No argument supplied. You need to pass a directory as an argument."
        rm $DATE.md
        exit 1

    else

        # Check if $1 directory exists.
        if [ ! -d "$1" ]; then
            echo "# Directory '$1' does not exist, creating it."
            mkdir $1
        fi
        
        # Move $DATE.md to the $1 directory.
        echo "# Moving notes file to '$1' directory."
        mv $DATE.md $1/

        # Add a link in SUMMARY.md.
        data="  - [$DATE](/$1/$DATE.md)" member="* $1" perl -i.backup -n -E 'print; say $ENV{"data"} and $found = 1 if /^$ENV{"member"}$/ and not $found' SUMMARY.md

    fi

fi

