#!/bin/bash
shopt -s extglob
echo "welcome to User Registration from"

FiratNamePattern="^[A-Z]{1}[a-z]{3,}$"

function validation1()
{
	if [[ $fiestName =~ $FirstNamePattern ]]
	then
	       echo "valid First Name "
	else
		echo "Invalid First Name"
	fi
}

read -p "enter First Name:" firstName
validation $firstName $FirstNamePattern


LastNamePattern="^[A-Z]{1}[a-z]{3,}$"

function validation2()
{
             if [[ $lastName =~ $LastNamePattern ]]
        then
               echo "valid Last Name"
        else
               echo "Invalid Last Name "

        fi

}

read -p "enter last name:" lastName
validation2 $lastName $LastNamePattern
