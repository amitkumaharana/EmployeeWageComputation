#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
wage_per_hour=20
full_day_hour=8
part_time_hour=8
var=$((RANDOM%2))
part_time(){
	a=$1
	if [ $a -eq 0 ]
	then
		full_day_hour=16
	else
		full_day_hour=8
	fi
}
if [ $var -eq 0 ]
then
	echo Employee is Present
	var=$((RANDOM%2))
	part_time $var
	daily_employee_wage=$((wage_per_hour*full_day_hour))
else
	echo Employee is Absent
	daily_employee_wage=0
fi
echo $daily_employee_wage
