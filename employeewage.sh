#!/bin/bash
echo "Welcome to Employee Wage Computation Program"
wage_per_hour=20
full_day_hour=8
part_time_hour=8
monthly_wages=0
total_hour=0
total_working_days=0
work_hours(){
	a=$1
	case $a in
		0)full_day_hour=16;;
		1)full_day_hour=8;;
	esac
}
while [ $total_working_days -le 20 -a $total_hour -le 100 ]
do
	var=$((RANDOM%2))
	case $var in
	0)echo Employee is Present
	var=$((RANDOM%2))
	work_hours $var
	daily_employee_wage=$((wage_per_hour*full_day_hour))
	echo Todays working wages is $daily_employee_wage
	total_hour=$((total_hour+full_day_hour));;
	1)echo Employee is Absent
	daily_employee_wage=0;;
	esac
	monthly_wages=$((monthly_wages+daily_employee_wage))
	total_working_days=$((total_working_days+1))
done
echo Monthly wages are $monthly_wages
echo Total number of days worked are $total_working_days
