terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami = "ami-03d5c68bab01f3496"
  instance_type = "t2.micro"
  key_name = "" #ADICIONAR A CHAVE PEM
  vpc_security_group_ids = [""] ADICIONAR O SECURITY GROUP
  #user_data = <<-EOF
  #                  #!/bin/bash
  #                  cd /home/ubuntu
  #                  echo "<h1>Feito com Terraform</h1>" > index.html
  #                  nohup busybox httpd -f -p 8080 &
  #              EOF
  tags = {
    Name = "" #ADICIONAR NOME DA MAQUINA
  }
}

