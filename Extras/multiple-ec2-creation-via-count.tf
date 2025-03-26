# keypair creation
resource aws_key_pair my_key{
    key_name = "terraform-ec2"
    public_key = file("terraform-ec2.pub")
}

# vpc creation
resource aws_default_vpc default {

}

# security group creation
resource aws_security_group my_sg {
  name = "ec2-sg"
  description = "This is a TF made sg for ec2"
  vpc_id = aws_default_vpc.default.id

# inbound rules
ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks= ["0.0.0.0/0"]
    description = "SSH opened"
}
ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks =["0.0.0.0/0"]
    description = "Port number 80 opened"
}
ingress {
    from_port = 8000
    to_port = 8000
    protocol = "tcp"
    cidr_blocks =["0.0.0.0/0"]
    description = "Port number 8000 opened"
}
ingress {
    description = "port 443 allow"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

# Outbound rules
egress{
    from_port = 0
    to_port = 0
    protocol = "-1"
    description = "All ports opened for outbound access"
}
}

# EC2 instance creation
resource aws_instance my_instance {
  count = 2        # To create multiple ec2 instances using a single .tf file but the instance name will be same for all instances
  key_name = aws_key_pair.my_key.key_name
  security_groups = [aws_security_group.my_sg.name]
  instance_type = "t2.micro"
  ami = "ami-0df368112825f8d8f"
  user_data = file("install_nginx.sh")

# storage
  root_block_device{
    volume_size = 15
    volume_type = "gp3"
  }
  tags = {
    Name = "terra.instance"
  }
}



# Note: If you are creating multiple ec2 instance using single terraform file then change the output.tf file alo with * sign.