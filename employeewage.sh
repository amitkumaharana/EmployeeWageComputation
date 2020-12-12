#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
var=$((RANDOM%2))
if [ $var -eq 0 ]
then
	echo Employee is Present
else
	echo Employee is Absent
fi

