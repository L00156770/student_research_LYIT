| [Return to README.MD](../README.md)
| ---------------------------------------------------- |

# Infrastructure as Code with Terraform Example

- [Install Instructions](#install-instructions)
- [Why Terraform?](#why-terraform?)
- [Considerations](#learnings)

## Install-instructions using Ubuntu/Linux

   1. Pre-req: Install Amazon CLI https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html 
      ```
      #after installed, configure with secret keys and default values
      #NOTE: keys can be generated directly in AWS under user/security creds/secret keys
      $ aws configure
      ```
   2. Install Terraform and create working folder/example file
      ```
      #download terraform for linux (update URL to latest version)
      $ sudo wget https://releases.hashicorp.com/terraform/0.12.25/terraform_0.12.25_linux_amd64.zip
      
      #unzip to directory in path
      #if directory not in path, add it in ~/.profile, save, then run source ~/.profile to refresh
      $ sudo unzip terraform_0.12.25_linux_amd64.zip -d /usr/local/bin

      #validate Terraform was installed successfully.  if version not shown, there was an issue installing above.
      $ terraform --version
      
      #create folder to save Terraform files
      $ mkdir terraform-for-aws 
     
      #change into new filder directory
      $ cd terraform-for-aws
      
      #begin creating Terraform resources/files (from scatch or clone the Github repo)
      $ nano create-aws-ec2.tf

      #use variables (e.g. tfvars) to deploy to desired environment (staging vs production)

      #Helpful commands:
      terraform init #for initalizing/updating
      terraform get #for getting modules
      terraform refresh #for refreshing tf
      terraform terraform plan -var-file=terraform.tfvars #can use custom var files with variables (e.g. for secrets or environments)
      terraform terraform apply -var-file=terraform.tfvars
      terraform terraform destroy -var-file=terraform.tfvars
      ```
      
## Why Terraform?

   1. Terraform scripts are Infrastructure as Code and can be version controlled
   2. Terraform provides an immutable approach which helps prevent configuration drift
   3. Quick setup for this small project example
   4. Terraform supports many different services/vendors
   5. Terraform is free and open source
   6. Terraform is used at our company hence a valuable tool to learn/explore
   
## Learnings
Security Considerations:  
   - Do not hard code credentials/keys into Terraform scripts, especially when pushed to VC like Github
   - Secret keys should be carefully stored and clearly logged for tracking as sensitive risk elements
   - IAM resources should be carefully provisioned (e.g. only allow staging or prod, restrict access   least privilege, etc)
   - IaC should be treated as code adhering to the same security policies as code development (RegEx, automated tests/unit tests, scanning tools, code reviewers/approvers, etc)
   - Misconfigurations, default configurations, ad-hoc config changes are all triggers of security risks
   - Security is everyone's responsibility across the DevOps pipeline
   - Back-end should be used to securely manage Terraform state (e.g. S3 bucket)
   - Use gitignore file to avoid uploading files/sensitive data to Github

