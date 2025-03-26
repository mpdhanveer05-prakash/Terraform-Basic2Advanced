variable "env" {
    description = "value of environment"
    type = string
  
}
variable "bucket_name" {
    description = "Name of the bucket"
    type = string
  
}
variable "instance_count" {
    description = "Number of instances to be created"
    type = number
  
}
variable "instance_type" {
    description = "Type of instance to be created"
    type = string
  
}
variable "ami_id" {
    description = "AMI ID to be used"
    type = string
  
}
variable "hash_key" {
    description = "Hash key for dynamodb"
    type = string
  
}