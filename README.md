# TERRAFORM PROJECT: AWS INFRASTRUCTURE SETUP

This Terraform project sets up an AWS infrastructure consisting of EC2 instances and a load balancer. It's organized into modules for managing virtual machines (VM) and load balancers (LB).

## PROJECT STRUCTURE

The project is structured as follows:

### Terraform\modules\vm

Contains configuration for EC2 instances.

- variables.tf: Defines variables for EC2 instance configuration.
- resources.tf: Creates AWS EC2 instances using specified configurations.
- output.tf: Outputs EC2 instance IDs and public IPs.

### Terraform\modules\lb

Manages the load balancer setup.

- variables.tf: Declares variables for load balancer configuration.
- resources.tf: Creates an AWS load balancer with subnet mappings.
- output.tf: Outputs the load balancer's DNS name.

### Terraform\env\dev\ec2-tect-test

Defines the development environment for the EC2 instances.

- variables.tf: Specifies variables with default values for EC2 instance setup and AWS access keys.
- terraform.tfvars: Contains the actual AWS access keys.
- provider.tf: Configures the AWS provider using access and secret keys.
- main.tf: Orchestrates the modules, creating EC2 instances and a load balancer.

## HOW TO USE

### PREREQUISITES

- AWS account: Create an AWS account and generate an access key and secret key.
- Terraform Installed: Install Terraform on your machine.

### AWS CONFIGURATION

Set up your AWS access key and secret key in terraform.tfvars:

# TERRAFORM PROJECT: AWS INFRASTRUCTURE SETUP

This Terraform project sets up an AWS infrastructure consisting of EC2 instances and a load balancer. It's organized into modules for managing virtual machines (VM) and load balancers (LB).

## PROJECT STRUCTURE

The project is structured as follows:

### Terraform\modules\vm

Contains configuration for EC2 instances.

- variables.tf: Defines variables for EC2 instance configuration.
- resources.tf: Creates AWS EC2 instances using specified configurations.
- output.tf: Outputs EC2 instance IDs and public IPs.

### Terraform\modules\lb

Manages the load balancer setup.

- variables.tf: Declares variables for load balancer configuration.
- resources.tf: Creates an AWS load balancer with subnet mappings.
- output.tf: Outputs the load balancer's DNS name.

### Terraform\env\dev\ec2-tect-test

Defines the development environment for the EC2 instances.

- variables.tf: Specifies variables with default values for EC2 instance setup and AWS access keys.
- terraform.tfvars: Contains the actual AWS access keys.
- provider.tf: Configures the AWS provider using access and secret keys.
- main.tf: Orchestrates the modules, creating EC2 instances and a load balancer.

## HOW TO USE

### PREREQUISITES

- AWS account: Create an AWS account and generate an access key and secret key.
- Terraform Installed: Install Terraform on your machine.

### AWS CONFIGURATION

Set up your AWS access key and secret key in terraform.tfvars:

- access_key = "YOUR_ACCESS_KEY"
- secret_key = "YOUR_SECRET_KEY"


### RUN TERRAFORM

Navigate to Terraform\env\dev\ec2-tect-test.

Run the following commands:

- terraform init
- terraform plan
- terraform apply

### REVIEW

After applying changes, Terraform will output information about created resources. When done, use terraform destroy to remove all created resources.


-------------------TERRAFORM PROJECT: AWS INFRASTRUCTURE SETUP-------------------------

This Terraform project sets up an AWS infrastructure consisting of EC2 instances and a load balancer. It's organized into modules for managing virtual machines (vm) and load balancers (lb).

--PROJECT STRUCTURE--
The project is structured as follows:

Terraform\modules\vm: Contains configuration for EC2 instances.

variables.tf: Defines variables for EC2 instance configuration.
resources.tf: Creates AWS EC2 instances using specified configurations.
output.tf: Outputs EC2 instance IDs and public IPs.
Terraform\modules\lb: Manages the load balancer setup.

variables.tf: Declares variables for load balancer configuration.
resources.tf: Creates an AWS load balancer with subnet mappings.
output.tf: Outputs the load balancer's DNS name.
Terraform\env\dev\ec2-tect-test: Defines the development environment for the EC2 instances.

variables.tf: Specifies variables with default values for EC2 instance setup and AWS access keys.
terraform.tfvars: Contains the actual AWS access keys.
provider.tf: Configures the AWS provider using access and secret keys.
main.tf: Orchestrates the modules, creating EC2 instances and a load balancer.

--HOW TO USE--

PREREQUISITES
AWS account: Create an AWS account and generate an access key and secret key.
Terraform Installed: Install Terraform on your machine.

AWS CONFIGURATION
Set up your AWS access key and secret key in terraform.tfvars:
access_key = "YOUR_ACCESS_KEY"
secret_key = "YOUR_SECRET_KEY"

RUN TERRAFORM
Navigate to Terraform\env\dev\ec2-tect-test.

Run the following commands:
terraform init
terraform plan
terraform apply

REVIEW
After applying changes, Terraform will output information about created resources.
When done, use terraform destroy to remove all created resources.
