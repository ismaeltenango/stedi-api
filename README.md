# stedi-api

#!/bin/bash

# Author: IsmaelTenango

print_usage () {
	echo "print_usage function works fine"
}

add_user () {
	echo "
	User succesfully created
	name: $2 
	password: ####### 
	saved in: $4"
	echo "$3" | passwd --stdin "$2"
}

delete_user () {
	echo "TODO: delete user"
}

# TODO: make sure the user is root
if [ true ]
then
	#switch case
	case "$1" in
		-h )
			print_usage
			;;
		-d ) 
			delete_user $@
			;;
		-a )
			add_user $@
			;;
		* )
			# TODO: Handle invalid option
			;;
	esac
else
	echo "This script can only be run when logged in as the root user"
fi
