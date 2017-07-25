#!/bin/bash

#--------------------------------------------------------
#----------------- Default variables --------------------
#--------------------------------------------------------
SOURCE_LOCATION="/Users/Wardo/Documents/Templates/"
DESTINATION_LOCATION="/Users/Wardo/Desktop/"
E_UNSPECIFIED=420 # File not specified.
E_NONEXISTENT=421 # Template doesn't exists.

#--------------------------------------------------------
#----------------Setting up variables.-------------------
#--------------------------------------------------------
if [ -n "$1" ]; then # Test whether file name was given.
  TYPE_OF=$1
else
  echo "File not specified."
  exit $E_UNSPECIFIED
fi

if [ -n "$2" ]; then # Test whether file path was given.
  LOCATION_OF=$2
else  # If not, assign default path.
  LOCATION_OF=$DESTINATION_LOCATION
fi

#--------------------------------------------------------
#---------- Getting the corresponding Template.----------
#--------------------------------------------------------
echo "Generating $TYPE_OF file in $LOCATION_OF."

case "$TYPE_OF" in
    Python) FILE="PyTemplate.py";;
    PyClass) FILE="PyClass.py";;
    C++) FILE="C++Template.cpp";;
    C++Class) FILE="C++Class.hpp";;
    HTML) FILE="index.html";;
    *) echo "The type of file is wrong or currently not supported."
    exit $E_NONEXISTENT;;
esac

#--------------------------------------------------------
#------------- Copy Template to desired path.------------
#--------------------------------------------------------
cp "$SOURCE_LOCATION/$FILE" $LOCATION_OF

exit 0 # Success.
