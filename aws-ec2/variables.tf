variable "aws_instance_type"{
    default = "t2.micro"
    type = string
}

variable "aws_ami_id"{
    default = "ami-084568db4383264d4"
    type = string
}

variable "aws_default_storage_size"{
    default = 10
    type = number
}

variable "aws_storage_type"{
    default = "gp3"
    type = string
}

variable "env"{
    default = "dev"
    type = string
}