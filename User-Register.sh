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



EmailPattern="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})*$"

function validation3()
{
             if [[ $email =~ $EmailPattern ]]
        then
               echo "valid EmailId "
        else
               echo "Invalid EmailId "

        fi

}

read -p "enter email :"  email
validation3 $email $EmailPattern
