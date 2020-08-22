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



MobileNumberPattern="^[+]{1}[1-9]{2}[ ][0-9]{10}$"

function validation4()
{
	if [[ $mubileNumber =~ $MobileNumberPattern ]]
	then
	       echo "valid Mobile Number"
	else
		echo "Invalid Mobile Number"

fi
}

read -p "Enter The Mobile Number With Country Code:" mobileNumber
validation4 $mobileNumber $MobileNumberPattern



PasswordLength="^[A-Za-z]{8,}$"

function validation5()
{
	if [[ $password =~ $PasswordLength ]]
	then
	       echo "valid password"
	else
		echo "Invalid passord"

fi
}

read -p "Enter The Password Minimum Eight Character:" password
validation4 $password $PasswordLength


passUperCase="^[A-Za-z]{8,}$"
function validation6()
{
        if [[ $password =~ $passUperCase ]]
	then
	       echo "valid password"
	else
		echo "Invalid passowd"

fi
}
read -p "Enter The Password Minimum Eight Character:" password
validation6 $password $passUperCase


checkNum="^[0-9A-Za-z]{8,}$"

function validation7()
{
        if [[ $password =~ $checkNum ]]
	then
	       echo "valid and matched password"
	else
		echo "Invalid and not mateched passowd"

fi
}
read -p "Enter The Password Minimum Eight Character:" password
validation7 $password $checkNum



PasswordLength="^[A-Za-z]{8,}$"

passUperCase="^[A-Za-z]{8,}$"

checkNum="^[0-9A-Za-z]{8,}$"


passPattern="^[A-Z]{1,}[a-z]{4,}[*&^%$#@!+=]{1}[0-9]{1,}$"

function validation8()
{
        if [[ $password =~ $PasswordLength && $passwod =~ $passUperCase && $password =~ $checkNum && $password =~ $passPattern ]]
	then
	       echo "valid"
	else
		echo "Invalid "

fi
}
read -p "Enter The Password Minimum Eight Character:" password
validation8 $password $PasswordLength $passUperCase $checkNum $spChar 
