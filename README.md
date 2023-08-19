## Flask Web Application
This repository contains a basic Flask Web Application. The use of the application is that of a basic job application form coded in Python. 
The real purpose of this repo is order to use Ansible, Terraform and Jenkins. 
The contained files are linked with a Jenkins CI/CD pipeline which is triggered via a push to this repo. 
On a push Jenkins will pull the files from this repo. It will task Terraform to create an EC2 instance, security group and keypair.
On creation it passes the public IP to Ansible. Ansible will then configure the instance to host the app. Installing and configuring NGINX
and Gunicorn. Once complete it sends an automated message via Slack containing a clickable link to the instance allowing developers and 
testers to check the apps functionality.
