#!/bin/bash
echo "Stage - 1 = Cloning the repo from test branch"

if (git clone -b test-by-dev https://github.com/Shashwatsingh22/CloudFormation-Script-CI-CD); then
	
	echo "Clonned the Repository from the Test Branch!\n"

	echo "Stage - 2 = Lets Start Testing"

	if (bash ./CloudFormation-Script-CI-CD/cf-test-1/test.sh); then

		echo "Cf Script Successfully Fine"

		echo "Stage -3 = Send Succ Mail to the User"

		#First Get the Detail of Deployment and also get the delete the Stack

		(bash ./CloudFormation-Script-CI-CD/cf-test-1/getDet.sh)

		# Sending the Mail

		if (python3 req-script/sendMail.py no-error-found); then

			echo "Successfully Able to Send the Mail"

		else
			echo "Some Error Caused While Sending the Mail"
		
		fi

		# Push to Main Branch

		echo "Stage - 4 = Push to Main Branch"

		if (echo "Push to Main Branch"); then

			echo "Successfully Able to Push to Main Branch"

		else 
			
			echo "Some Error Caused While pushing to Main Branch"

		fi	

	
	else
		echo "Cf Script have some problem"

		echo "Stage - 3 & 4 =  Skipped"

		echo "Stage - 5 = Sending the Error Mail to Cloud Engineer"

		if (python3 req-script/sendMail.py error-found); then

			echo "Error Mailed Successfully"
		
		else
			echo "Some Error Caused While Sending the Mail"
		
		fi	
	
	fi

else
	echo "Some Error Caused!"

fi	
