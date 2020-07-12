# Terraform configuration

#Using this example as a simple EC2 webserver 
resource "aws_instance" "webserver" {
  ami = var.ami_id
  count = var.instance_count
  instance_type = var.instance_type
  #key_name = var.aws_team_key_id
  iam_instance_profile  = var.iam_profile_aws
  security_groups	= [ var.security_group_aws ]
  #subnet_id = var.subnet_id
  tags = var.tags
}
/*
  connection {
    type        = "ssh"
    user        = "ec2-user" #to increase security, username could be encrypted or set as env variable
    private_key = file(var.key_file_path)
    host        = self.public_ip
  }

#Installing via Terraform, but future sprints this could be configured via Ansible.  
#Might also be better to use null resource for reusability.
/*provisioner "remote-exec" {
    inline = [
      #Run updates before installing anything
      "sudo yum -y update",

      #Install OpenJDK for use with other components.  Not used for this example.
      #"sudo yum -y install java-1.8.0-openjdk",

       This code could be utilized to provision IaC for a Jenkins server and config mgmt options
      #"curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo",
      #"sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key",
      #"sudo yum -y install jenkins",
      #"sudo systemctl start jenkins",
      #"sudo systemctl status jenkins",
      #"sudo systemctl enable jenkins",
      
    ]
  }
}
*/