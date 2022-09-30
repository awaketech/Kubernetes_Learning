provider "aws" {
   region     = "ap-south-1"
   access_key = "XXX"
   secret_key = "XXX"
   
}

resource "aws_instance" "terraform_example" {

    ami = "ami-062df10d14676e201"  
    instance_type = "t3a.medium" 
    key_name= "sadiksha"
    tags = {
      Name = "Kube-terr"
    }
    vpc_security_group_ids = [aws_security_group.main.id]

 
}

resource "aws_security_group" "main" {
  egress = [
    {
      cidr_blocks      = [ "0.0.0.0/0", ]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
  ]
 ingress                = [
   {
     cidr_blocks      = [ "0.0.0.0/0", ]
     description      = ""
     from_port        = 22
     ipv6_cidr_blocks = []
     prefix_list_ids  = []
     protocol         = "tcp"
     security_groups  = []
     self             = false
     to_port          = 22
  }
  ]
}




