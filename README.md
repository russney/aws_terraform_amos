# aws_terraform_amos
AWS Terraform code for creating server infrastructer and installing packages 
with instructions for setting up keys, security groups, and permissions in AWS

# provision a user that terraform can use to access AWS:
Note your AWS account id - you will need it for terraform
Go to AWS, IAM, and select create a user
username 
download access key and secret key
#create group for EC2 perms:
ec2-group
# assign rney_terraform_iam to ec2-group
# create key pair for terraform
amos_kp
# download key pair
amos_kp.pem
chmod 600 amos_kp.pem
# create .tf file, and put access and secret key in there
terraform plan
terraform apply
grep public_dns terraform.tfstate
ssh -i amos_kp.pem <IP> -l ec2-user
exit
terraform destroy
