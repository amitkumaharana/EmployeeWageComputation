#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"
wage_per_hour=20
full_day_hour=8
part_time_hour=8
monthly_wages=0
total_hour=0
i=0
work_hours(){
	a=$1
	case $a in
		0)full_day_hour=16;;
		1)full_day_hour=8;;
	esac
}
while [ $i -le 20 -a $total_hour -le 100 ]
do
	var=$((RANDOM%2))
	case $var in
	0)echo Employee is Present
	var=$((RANDOM%2))
	work_hours $var
	daily_employee_wage=$((wage_per_hour*full_day_hour))
	total_hour=$((total_hour+full_day_hour));;
	1)echo Employee is Absent
	daily_employee_wage=0;;
	esac
	monthly_wages=$((monthly_wages+daily_employee_wage))
	i=$((i+1))
done
echo $monthly_wages
