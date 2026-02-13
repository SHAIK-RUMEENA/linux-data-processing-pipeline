#!/bin/bash

# positional arguments
input=$1
output=$2

# pipeline processing
cat $input | grep "IT" | cut -d',' -f2,4 | sed 's/,/ - Salary: /' | awk '{print "Employee:", $0}' > $output

echo "Processing completed. Output stored in $output"
