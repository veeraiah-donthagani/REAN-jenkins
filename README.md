# REAN-jenkins

Overview of Jenkins, Packer and Terraform installation cookbook:-
----------------------------------------------------------------
    REAN-jenkins cookbook has below recipes:-
    -----------------------------------------
      default
      java
      master
      _master_package
      plugins
      terraform
      packer
      firewall
      jenkins_user
      selinux
 
## **Input variables**

**Variables**                | **Description**
-----------------------------|------------------------------------------------------------------
required_plugins			 | required jenkins plugins to install 
default_plugins				 | default plugins to be installed like git, rvm etc,.
extra_plugins                | any additional plugins needed
['terraform']['version']	 | terraform version
['packer']['version']		 | packer version
      
Pre-requisites:-
----------------
 1) Chef DK should be installed
 
 2) Make sure that all the attributes are exported correctly along with access and secret access keys.
 
How To Run the Cookbook in our local machine:-
----------------------------------------------

Step1:-  Download and Install ChefDK

                 i) wget https://packages.chef.io/files/stable/chefdk/3.1.0/el/7/chefdk-3.1.0-1.el7.x86_64.rpm
                ii) rpm -Uvh chefdk-3.1.0-1.el7.x86_64.rpm
                
Step2:-  Export your Access and secret key.

                i) export AWS_ACCESS_KEY_ID=xxxxxxxxxxxxxxxxxxx
               ii) export AWS_SECRET_ACCESS_KEY=xxxxxxxxxxxxxxxxxxxxxxxxx
               
Step3:-  Create an S3 bucket and Upload required artifacts to it. Change the attribute values and Paths accordingly in kitchen.yml file.

Step4:-  Clone the repository from git hub and update kithcen.yml file with required attribute values.

Step5:-  Modify the values before exporting below attributes

                export AWS_REGION="us-gov-west-1"
                export SUBNET_ID="subnet-xxxxxx"
                export SG_ID="sg-xxxxxx"
                export RHEL_AMI="ami-0466e865"
                export SSH_KEY="pem file name"
                export IAM_PROFILE="s3_access"
                export PUBLIC_IP="true"
                export TAGS_OWNER="owner name"
                export TAGS_ENVIRONMENT="Testing"
                export TAGS_PROJECT="Learning"
                export TAGS_EXPIRY="2018-08-09"
                export SSH_KEY_PATH="pem file path"
                export S3_BUCKET="s3 bucket name"
                export JENKINS_ADMIN_EMAIL="xxxxx@xxxx.com"
                
Step6:-  Change the directory path to REAN-jenkins and Run "kitchen converge" command to Provision the instance with jenkins, packer and terraform packages.
