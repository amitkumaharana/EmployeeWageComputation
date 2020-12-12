#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
wage_per_hour=20
full_day_hour=8
part_time_hour=8
var=$((RANDOM%2))
part_time(){
	a=$1
	case $a in
		0)full_day_hour=16;;
		1)full_day_hour=8;;
	esac
}
case $var in
	0)echo Employee is Present
	var=$((RANDOM%2))
	part_time $var
	daily_employee_wage=$((wage_per_hour*full_day_hour));;
	1)echo Employee is Absent
	daily_employee_wage=0;;
esac
echo $daily_employee_wage
