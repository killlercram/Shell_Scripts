#!/bin/bash

<< task
Deploy a Django app
 and handle the code for errors

task

#Cloning the code from github

code_clone() {
	echo "Cloning the Django Notes app"
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

#Installing the requirements

install_requirements() {
	echo "Installing Dependencies"
	sudo apt-get install docker.io nginx -y
}

#Doing the restarts 

required_restarts() {
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker

}

#now starting deployments

deploy() {
	docker build -t notes-app .
   	#docker-compose up -d
	docker run -d -p 8000:8000 notes-app:latest
}

echo "**************************Deployment Started******************"

if ! code_clone; then
	echo "Code directory already exists"
	cd django-notes-app
fi

if ! install_requirements; then
	echo "Installation faliur"
	exit 1
fi

if ! required_restarts; then 
	echo "System fault identified"
	exit 1
fi

if ! deploy: then
	echo "Deployment Error,mailing admin"
	# sendmail
	exit 1
fi

echo "**************************Deployment Done******************"

