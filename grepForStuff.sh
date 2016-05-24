#!/bin/bash
for file in "$@"
do
	echo "FILE : $file"
	echo "----------"	
	#grep for operating system
	echo "Instances of Operating System"
	grep -io Android $file | wc -l
	echo "----------"
	#grep for operating system version
	echo "Instances of Operating system version number"
	grep -io 5.1.1 $file | wc -l
	echo "----------"
	#grep for operating system build
	echo "Instances of Operating system build number"
	grep -io 23.4.A.1.232 $file | wc -l
	echo "----------"
	#grep for MAC address
	echo "Instances of MAC address"
	grep -io 30:75:12:85:87:12 $file | wc -l
	echo "----------"
	#grep for Advertiser ID
	echo "Instances of Advertiser ID"
	grep -io 64e562a1-f989-40d0-a164-1ce40ff69f24 $file | wc -l
	echo "----------"
	#grep for IMEI number
	echo "Instances of IMEI number"
	grep -io 355098061863853 $file | wc -l
	echo "----------"
	#grep for first name
	echo "Instances of First Name"
	grep -io Alexander $file | wc -l
	echo "----------"
	#grep for last name
	echo "Instances of Last Name"
	grep -io Burkhart $file | wc -l
	echo "----------"
	#grep for username
	echo "Instances of Username"
	grep -io trahkrub123 $file | wc -l
	echo "----------"
	#grep for password
	echo "Instances of Password"
	grep -io projectRecon567 $file | wc -l
	echo "----------"
	#grep for email
	echo "Instances of Email"
	grep -io trahkrub@gmail.com $file | wc -l
	echo "----------"
	#grep for current location zipcode
	echo "Instances of Current location zipcode"
	grep -io 02115 $file | wc -l
	echo "----------"
	#grep for location zipcode
	echo "Instances of Location zipcode"
	grep -io 10028 $file | wc -l
	echo "----------"
	#grep for gender
	echo "Instances of Gender"
	grep -io Male $file | wc -l
	echo "----------"
	#grep for current city
	echo "Instances of Current city"
	grep -io boston $file | wc -l
	echo "----------"
	#grep for birthday
	echo "Instances of Birthday"
	grep -io 1-jan-1990 $file | wc -l
	echo "----------"
	#grep for current gps location
	echo "Instances of Current gps location"
	grep -ion 'longitude*\|latitude*' $file | wc -l
	echo "----------"
	#grep for device location
	echo "Instances of Device's location"
	grep -ioE '370 Huntington Ave, Boston, MA 02115' $file | wc -l
	echo "----------"
	#grep for user location
	echo "Instances of User's location"
	grep -ioE 'United States, NY, 10028' $file | wc -l
	echo "----------"
	#execute python file to obtain sites and number of sites contacted
	python fetch_url.py $file
	echo "----------"
		
done
