#!/bin/bash
# Authors : Matthew Lehmann
# Date: 2/7/2020

# Problem 1 Code:
echo "Give me a file name: "
read fileName
echo "Give me a regular expression: "
read regEx
# Call the grep command using our regEx and fileName variables
grep $regEx $fileName
echo "Number of phone numbers: " 
# Setup a regular expression that looks for a phone number pattern and we
# will assume that the pattern of the phone number is xxx-xxx-xxxx
grep -c '[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}' $fileName
# Now let's count the number of emails and output it, just count the @ symbols
echo "Number of emails: " 
grep -c '@' $fileName
# For the 303 area code numbers, there is a better way to do this
# but following the previous patterns I used, just look for a number
# in the shape of a phone number, do the first 3 digits individually
# to ensure we get only 303's not 301's
grep '[3-3]\{1\}[0-0]\{1\}[3-3]\{1\}-[0-9]\{3\}-[0-9]\{4\}' $fileName
# Alright, now let's do the writing of the emails to a file
# Specifically the geocities ones
grep '@geocities.com' $fileName >> email_results.txt
# Now let's try pushing the email results text to git
git add email_results.txt
git commit -m "Here is the lab_3 email list"
# I will just manually push the file

