#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
wage_per_hour=20
full_day_hour=8
var=$((RANDOM%2))
if [ $var -eq 0 ]
then
	echo Employee is Present
	daily_employee_wage=$((wage_per_hour*full_day_hour))
else
	echo Employee is Absent
	daily_employee_wage=0
fi
echo $daily_employee_wage
