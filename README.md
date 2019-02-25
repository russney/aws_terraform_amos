# aws_terraform_amos
AWS Terraform code for creating server infrastructer and installing packages 
with instructions for setting up keys, security groups, and permissions in AWS

#provision a user that terraform can use to access AWS:  Note your AWS account id - you will need it to log in from the AWS console.  
* Go to AWS, IAM, and select create a user.  
* Give the user a username (rney_terraform_iam) and select for "programmatic access".   
* When creating new user, create group for EC2 perms:
*  "ec2-group".  
* Add a tag key called "project" (this is case sensative), and a value of project name - in this case 'amos'.  
* Download access key and secret key.  
* Assign rney_terraform_iam to ec2-group if not already done - this can be done through the permissions header under the user.

#create key pair under "Security credentials" for terraform: 
* "amos_kp".  
* Download key pair and save it somewhere safe!  
* "amos_kp.pem".  
* Make the permissions read only by your user locally:  
* "chmod 600 amos_kp.pem"

#create security group that only your PC has access to
* go to EC2 and select Security groups from left pane - create amos_sg
* click edit - and add ports 22, 3000 for 'My IP'

#create .tf file, and put access and secret key in there
* framework should look like the amos.tf file

#create instances with terraform  
* terraform plan  
* terraform apply  

#find your instance public IP  
* grep public_dns terraform.tfstate  

#connect to your instance  
* ssh -i amos_kp.pem <IP> -l ec2-user  
* exit  

#download server software layer
* sudo su - 
* yum install git
* git clone https://github.com/russney/aws_terraform_amos.git

#create unprivleged user 'amos_user'
* bash boot.sh

#install node, clone codebase, and run node server
* bash boot2.sh

#remove your instances to stop spending money/time  
* terraform destroy
